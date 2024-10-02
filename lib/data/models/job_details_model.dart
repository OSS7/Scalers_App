class JobDetailsModel {
  final int id;
  final String? title;
  final String? companyName;
  final String? companyLogo;
  final String? companyDescription;
  final String? companyIndustry;
  final String? location;
  final String? jobType;
  final String? workplacePreference;
  final String? vertical;
  final String? jobStatus;
  final String? jobDescription;
  final List<String>? requirements;

  JobDetailsModel({
    required this.id,
    this.title,
    this.companyName,
    this.companyLogo,
    this.companyDescription,
    this.companyIndustry,
    this.location,
    this.jobType,
    this.workplacePreference,
    this.jobStatus,
    this.vertical,
    this.jobDescription,
    this.requirements,
  });

  factory JobDetailsModel.fromJson(Map<String, dynamic> json) {
    List<String> jobRequirements = [];
    if (json['icp_answers'] != null &&
        json['icp_answers']['job-role'] != null) {
      jobRequirements = (json['icp_answers']['job-role'] as List)
          .map((role) => role['title_en'] as String)
          .toList();
    }

    return JobDetailsModel(
      id: json['id'],
      title: json['title'],
      companyName: json['company']['name'],
      companyLogo: json['company']['logo'],
      companyDescription: json['company']['description'],
      companyIndustry: json['company']['industry'],
      location: json['location']['name_en'],
      vertical: json['location']['name_en'],
      jobType: json['type']['name_en'],
      workplacePreference: json['workplace_preference']
          ['name_en'],
      jobStatus: json['status']['name_en'],
      jobDescription: json['icp_answers']['job-role'][0]
          ['description_en'],
      requirements:
          jobRequirements,
    );
  }

  // Factory method to create a JobDetailsModel from JobModel
  factory JobDetailsModel.fromModel(JobDetailsModel jobModel) {
    return JobDetailsModel(
      id: jobModel.id,
      title: jobModel.title,
      companyName: jobModel.companyName,
      companyLogo: jobModel.companyLogo,
      companyDescription: jobModel.companyDescription,
      companyIndustry: jobModel.companyIndustry,
      location: jobModel.location,
      jobType: jobModel.jobType,
      workplacePreference: jobModel.workplacePreference,
      jobStatus: jobModel.jobStatus,
      jobDescription: jobModel.jobDescription,
      requirements: jobModel.requirements,
    );
  }
}
