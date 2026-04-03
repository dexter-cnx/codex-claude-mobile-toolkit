# Cross-Platform Capability Matrix for Content-Heavy Flutter Apps

## Purpose

Before building a multi-platform content feature, define which capabilities are:

- shared
- platform-limited
- policy-sensitive
- operationally expensive

This avoids hidden drift between Android, iOS, macOS, Linux, Windows, and web.

## Capability matrix template

| Capability | Android | iOS | macOS | Linux | Windows | Web | Notes |
|---|---|---|---|---|---|---|---|
| Local file export | yes | yes | yes | yes | yes | partial | web requires browser download flow |
| Background restore queue | yes | limited | yes | yes | yes | limited | depends on lifecycle and execution model |
| Cached media/doc viewing | yes | yes | yes | yes | yes | partial | browser cache semantics differ |
| External share/import | yes | yes | yes | varies | varies | limited | verify platform plugin support |
| Secure local storage | yes | yes | yes | varies | varies | limited | review plugin guarantees carefully |
| Push-driven sync refresh | yes | yes | partial | varies | varies | limited | depends on backend and service model |

## Required decisions per feature

- must the feature work offline?
- is export/import required?
- is local indexing required?
- are background refreshes mandatory or optional?
- does the feature store sensitive local content?
- is web a first-class target or later target?

## Platform review checklist

- storage permissions
- file picker and export APIs
- share sheet / intent support
- secure storage guarantees
- background execution constraints
- notification hooks
- web browser limitations
- desktop packaging notes

## Recommendation

Treat platform capability planning as a **design input**, not as a release-stage audit.
