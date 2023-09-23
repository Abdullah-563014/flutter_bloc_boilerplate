class CommonResponse {
  String? status;
  String? msg;
  dynamic data;

  CommonResponse({this.status, this.msg, this.data});

  CommonResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> info = <String, dynamic>{};
    info['status'] = status;
    info['msg'] = msg;
    info['data'] = data;
    return info;
  }
}
