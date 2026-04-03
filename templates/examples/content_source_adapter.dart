abstract class ContentSourceAdapter<TQuery, TItem, TDetail, TFilterState> {
  Future<PagedResult<TItem>> browse({
    required int page,
    required TFilterState filters,
  });

  Future<PagedResult<TItem>> latest({
    required int page,
    required TFilterState filters,
  });

  Future<PagedResult<TItem>> search({
    required TQuery query,
    required int page,
    required TFilterState filters,
  });

  Future<TDetail> getDetail({
    required String stableId,
  });

  Future<TDetail> rehydrate({
    required String stableId,
  });
}

class PagedResult<T> {
  final List<T> items;
  final bool hasMore;
  final int? nextPage;
  final String? nextCursor;

  const PagedResult({
    required this.items,
    required this.hasMore,
    this.nextPage,
    this.nextCursor,
  });
}
