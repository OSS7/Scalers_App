class JobModel {
  final String? id;
  final String? createdDate;
  final String? title;
  final String? companyName;
  final String? companyLogo;
  final String? location;
  final String? jobType;

  JobModel({
    required this.id,
    this.createdDate,
    this.title,
    this.companyName,
    this.companyLogo,
    this.location,
    this.jobType,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      id: json['job']['uuid'],
      createdDate: json['job']['created_date'],
      title: json['job']['title'],
      companyName: json['job']['company']['name'],
      companyLogo: json['job']['company']['logo'],
      location: json['job']['location']['name_en'],
      jobType: json['job']['workplace_preference']['name_en'],
    );
  }
  factory JobModel.fromModel(JobModel job) {
    return JobModel(
      id: job.id,
      createdDate: job.createdDate,
      title: job.title,
      companyName: job.companyName,
      companyLogo: job.companyLogo,
      location: job.location,
      jobType: job.jobType,
    );
  }
}
