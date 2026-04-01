#!/usr/bin/env bash
set -euo pipefail

# Fetch a GraphQL schema into a tracked schema file.
#
# Usage:
#   GRAPHQL_ENDPOINT=https://example.com/graphql \
#   ./scripts/graphql_fetch_schema.sh graphql/schema.json
#
# Optional:
#   GRAPHQL_HEADERS='{"Authorization":"Bearer ..."}'
#   GRAPHQL_INTROSPECTION_QUERY_FILE=path/to/introspection_query.graphql
#
# Notes:
# - This script is intentionally lightweight and assumes `curl` and `jq` exist.
# - Projects may replace this with Rover, Apollo, or another schema tool.

if ! command -v curl >/dev/null 2>&1; then
  echo "error: curl is required" >&2
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "error: jq is required" >&2
  exit 1
fi

OUTPUT_PATH="${1:-graphql/schema.json}"
ENDPOINT="${GRAPHQL_ENDPOINT:-}"

if [[ -z "$ENDPOINT" ]]; then
  echo "error: GRAPHQL_ENDPOINT is required" >&2
  exit 1
fi

read -r -d '' DEFAULT_INTROSPECTION_QUERY <<'Q' || true
query IntrospectionQuery {
  __schema {
    queryType { name }
    mutationType { name }
    subscriptionType { name }
    types {
      ...FullType
    }
    directives {
      name
      description
      locations
      args {
        ...InputValue
      }
    }
  }
}
fragment FullType on __Type {
  kind
  name
  description
  fields(includeDeprecated: true) {
    name
    description
    args {
      ...InputValue
    }
    type {
      ...TypeRef
    }
    isDeprecated
    deprecationReason
  }
  inputFields {
    ...InputValue
  }
  interfaces {
    ...TypeRef
  }
  enumValues(includeDeprecated: true) {
    name
    description
    isDeprecated
    deprecationReason
  }
  possibleTypes {
    ...TypeRef
  }
}
fragment InputValue on __InputValue {
  name
  description
  type { ...TypeRef }
  defaultValue
}
fragment TypeRef on __Type {
  kind
  name
  ofType {
    kind
    name
    ofType {
      kind
      name
      ofType {
        kind
        name
        ofType {
          kind
          name
          ofType {
            kind
            name
          }
        }
      }
    }
  }
}
Q

INTROSPECTION_QUERY="$DEFAULT_INTROSPECTION_QUERY"

if [[ -n "${GRAPHQL_INTROSPECTION_QUERY_FILE:-}" ]]; then
  if [[ ! -f "$GRAPHQL_INTROSPECTION_QUERY_FILE" ]]; then
    echo "error: GRAPHQL_INTROSPECTION_QUERY_FILE does not exist: $GRAPHQL_INTROSPECTION_QUERY_FILE" >&2
    exit 1
  fi

  INTROSPECTION_QUERY="$(cat "$GRAPHQL_INTROSPECTION_QUERY_FILE")"
fi

QUERY_PAYLOAD=$(jq -n --arg query "$INTROSPECTION_QUERY" '{query: $query}')

HEADERS=()
HEADERS+=("-H" "Content-Type: application/json")

if [[ -n "${GRAPHQL_HEADERS:-}" ]]; then
  while IFS='=' read -r key value; do
    [[ -z "$key" ]] && continue
    HEADERS+=("-H" "$key: $value")
  done < <(echo "$GRAPHQL_HEADERS" | jq -r 'to_entries[] | "\(.key)=\(.value)"')
fi

mkdir -p "$(dirname "$OUTPUT_PATH")"

curl -sS -X POST "$ENDPOINT" \
  "${HEADERS[@]}" \
  --data "$QUERY_PAYLOAD" \
  | jq '.' > "$OUTPUT_PATH"

echo "wrote schema introspection to $OUTPUT_PATH"