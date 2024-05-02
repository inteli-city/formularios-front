class FilterFormsController {
  String? filteredTemplate;

  String? filteredStreet;

  String? filteredCity;

  String? filteredSystem;

  void setTemplate(String? value) {
    filteredTemplate = value;
  }

  void setStreet(String? value) {
    filteredStreet = value;
  }

  void setCity(String? value) {
    filteredCity = value;
  }

  void setSystem(String? value) {
    filteredSystem = value;
  }

  void clearFilters() {
    filteredTemplate = null;
    filteredStreet = null;
    filteredCity = null;
    filteredSystem = null;
  }

  int get activeFiltersAmount => [
        filteredTemplate != null ? 1 : 0,
        filteredStreet != null ? 1 : 0,
        filteredCity != null ? 1 : 0,
        filteredSystem != null ? 1 : 0
      ].reduce((value, element) => value + element);
}
