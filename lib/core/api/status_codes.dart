enum StatusCodes {
  ok, //200
  created, //201
  nobody, //400
  unauthorized, // 401
  forbidden, // 403
  notFound, // 404
  serverError
}

extension StatusCodesFromInt on int {
  StatusCodes get convertToStatusCode {
    switch (this) {
      case 200:
        return StatusCodes.ok;
      case 201:
        return StatusCodes.created;
      case 400:
        return StatusCodes.nobody;
      case 401:
        return StatusCodes.unauthorized;
      case 403:
        return StatusCodes.forbidden;
      case 404:
        return StatusCodes.notFound;
      default:
        return StatusCodes.serverError;
    }
  }
}
