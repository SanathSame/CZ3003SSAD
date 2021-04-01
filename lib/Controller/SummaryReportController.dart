class SummaryReportController{

  static final SummaryReportController _summaryReportController = SummaryReportController._internal();

  factory SummaryReportController(){
    return _summaryReportController;
  }

  SummaryReportController._internal();

  String selectedStage = "";
  String selectedLevel = "";

  void setSelectedStage(String stage){
    this.selectedStage = stage;
  }
  String getSelectedStage(){
    return selectedStage;
  }

  void setSelectedLevel(String level){
    this.selectedLevel = level;
  }
  String getSelectedLevel(){
    return selectedLevel;
  }
}