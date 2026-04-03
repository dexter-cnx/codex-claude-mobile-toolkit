import 'content_source_adapter.dart';

class FilterStateEnvelope {
  final int schemaVersion;
  final String featureId;
  final Map<String, dynamic> state;

  const FilterStateEnvelope({
    required this.schemaVersion,
    required this.featureId,
    required this.state,
  });
}

abstract class FilterStateStore {
  Future<void> save(FilterStateEnvelope envelope);
  Future<FilterStateEnvelope?> load(String featureId);
}

abstract class CatalogRepository<TItem> {
  Future<PagedResult<TItem>> search({
    required String query,
    required int page,
    required Map<String, dynamic> filterState,
  });
}
