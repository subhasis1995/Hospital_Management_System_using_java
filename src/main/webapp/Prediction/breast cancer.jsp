<%
out.println("<!DOCTYPE html>");
out.println("<html>");
out.println("<head>");
out.println("	<meta charset=\"utf-8\">");
out.println("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">");
out.println("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\">");
out.println("    <link rel=\"canonical\" href=\"https://getbootstrap.com/docs/4.5/examples/carousel/\">");
out.println("    <link rel=\"stylesheet\" type=\"text/css\" href=\"{{ url_for('static', filename='index.css') }}\">");
out.println("	<title>Multiple Disease Prediction System | Breast Cancer Prediction</title>");
out.println("</head>");
out.println("<style>");
out.println("    button");
out.println("{");
out.println("	border-style:none;");
out.println("}");
out.println("");
out.println("h1, h2, h3, h4, h5{");
out.println("    text-align: center;");
out.println("");
out.println("}");
out.println("");
out.println("form {");
out.println("	margin-top: 3%;");
out.println("	margin-left: 29%;");
out.println("	margin-right: 21%;");
out.println("");
out.println("}");
out.println("");
out.println("form fieldset{");
out.println("	padding: 30px;");
out.println("	border-width: 20px;");
out.println("	border-style: groove;");
out.println("    border-color: #5a5a5a;");
out.println("	background-color: #fff;");
out.println("}");
out.println("");
out.println("fieldset h1 {");
out.println("	color: #5a5a5a;");
out.println("	padding-bottom: 20px;");
out.println("	margin-left: 35px;");
out.println("	display: inline-block;");
out.println("	cursor: pointer;");
out.println("	font-size: 28px;");
out.println("	text-align: center;");
out.println("}");
out.println("");
out.println("fieldset label {");
out.println("	margin-left: 20px;");
out.println("	margin-right: 40px;");
out.println("	padding: 23px;");
out.println("	font-size: 20px;");
out.println("	display: inline-block;");
out.println("    width  : 240px;");
out.println("}");
out.println("fieldset input{");
out.println("	padding:8px;");
out.println("	color: #938c8c");
out.println("}");
out.println("fieldset input:focus{");
out.println("	color: #000;");
out.println("}");
out.println("fieldset button");
out.println("{");
out.println("	margin-left: 60px;");
out.println("	color: #fff;");
out.println("	background-color: #5a5a5a;");
out.println("	border-radius: 3px;");
out.println("	padding: 13px 39px;");
out.println("	text-align: center;");
out.println("	letter-spacing: 0.9px;");
out.println("	text-decoration: none;");
out.println("	margin-right: 15px;");
out.println("	line-height: 26px;");
out.println("	font-size: 16px;");
out.println("	box-shadow: 0px 1px 3px 0px #5a5a5a;");
out.println("	right: 0px;");
out.println("	margin-top: 15px;");
out.println("}");
out.println("");
out.println("");
out.println(".submit{");
out.println("	margin-left: 60px;");
out.println("	color: #fff;");
out.println("	background-color: #5a5a5a;");
out.println("	border-radius: 3px;");
out.println("	padding: 13px 39px;");
out.println("	text-align: center;");
out.println("	letter-spacing: 0.9px;");
out.println("	text-decoration: none;");
out.println("	margin-right: 10px;");
out.println("	line-height: 26px;");
out.println("	font-size: 16px;");
out.println("	box-shadow: 0px 1px 3px 0px #5a5a5a;");
out.println("	right: 100px;");
out.println("	margin-top: 15px;");
out.println("}");
out.println("");
out.println("#link_to_edit{");
out.println("    padding-left: 45px;");
out.println("}");
out.println("");
out.println(".fieldset{");
out.println("	margin-top: 3%;");
out.println("	margin-left: 0%;");
out.println("	margin-right: 0%;");
out.println("	padding: 30px;");
out.println("	border-width: 25px;");
out.println("	border-style: ridge;");
out.println("	border-color: #257a7a;");
out.println("	box-shadow: 6px 13px 13px 0px black;");
out.println("	background-color: #ebfffa;");
out.println("}");
out.println("");
out.println("</style>");
out.println("<body>");
out.println("");
out.println("	<header>");
out.println("    <nav class=\"navbar navbar-expand-md navbar-dark fixed-top bg-dark\">");
out.println("                <a class=\"navbar-brand\" href=\"#\"><b> Disease Prediction System</b></a>");
out.println("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarCollapse\" aria-controls=\"navbarCollapse\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
out.println("                    <span class=\"navbar-toggler-icon\"></span>");
out.println("                </button>");
out.println("                <div class=\"collapse navbar-collapse\" id=\"navbarCollapse\">");
out.println("                    <ul class=\"navbar-nav ml-auto\">");
out.println("                    ");
out.println("                    ");
out.println("                    <li class=\"nav-item\">");
out.println("                        <a class=\"nav-link active\" href=\"/cancer\">Breast Cancer</a>");
out.println("                    </li>");
out.println("                    <li class=\"nav-item\">");
out.println("		                <a class=\"nav-link\" href=\"#\">|</a>");
out.println("		            </li>");
out.println("                    <li class=\"nav-item\">");
out.println("		                <a class=\"nav-link\" href=\"/logout\">Logout</a>");
out.println("		            </li>");
out.println("                    </ul>");
out.println("                </div>");
out.println("            </nav>");
out.println("    </header><br/><br/>");
out.println("    <h1 style=\"text-align:center;\">Breast Cancer Prediction</h1>");
out.println("    <h5 style=\"text-align:center;\">Please enter the patient details</h5>");
out.println("    <form action=\"{{ url_for('predict')}}\" method=\"post\" class=\"form-inline\">");
out.println("            <fieldset>");
out.println("            <div class=\"tabcontent\" id=\"new\">");
out.println("                 <div class=\"form-group\">");
out.println("                    <label for=\"radius_mean \">radius_mean </label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"radius_mean\" required=\"required\">");
out.println("                 </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"texture_mean\">texture_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"texture_mean\" required=\"required\">");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"perimeter_mean\">perimeter_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"perimeter_mean\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"area_mean\">area_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"area_mean\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"smoothness_mean\">smoothness_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"smoothness_mean\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"compactness_mean\">compactness_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"compactness_mean\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"concavity_mean\">concavity_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"concavity_mean\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"concave points_mean\">concave points_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"concave points_mean\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"symmetry_mean\">symmetry_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"symmetry_mean\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"fractal_dimension_mean\">fractal_dimension_mean</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"fractal_dimension_mean\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"radius_se\">radius_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"radius_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"texture_se\">texture_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"texture_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"perimeter_se\">perimeter_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"perimeter_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"area_se\">area_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"area_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"smoothness_se\">smoothness_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"smoothness_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"compactness_se\">compactness_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"compactness_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"concavity_se\">concavity_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"concavity_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"concave points_se\">concave points_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"concave points_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"symmetry_se\">symmetry_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"symmetry_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"fractal_dimension_se\">fractal_dimension_se</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"fractal_dimension_se\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"radius_worst\">radius_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"radius_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"texture_worst\">texture_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"texture_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"perimeter_worst\">perimeter_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"perimeter_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"area_worst\">area_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"area_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"smoothness_worst\">smoothness_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"smoothness_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"compactness_worst\">compactness_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"compactness_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"concavity_worst\">concavity_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"concavity_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"concave points_worst\">concave points_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"concave points_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"symmetry_worst\">symmetry_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"symmetry_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  <div class=\"form-group\">");
out.println("                    <label for=\"fractal_dimension_worst\">fractal_dimension_worst</label>");
out.println("                    <input type=\"number\" class=\"form-control\" name=\"fractal_dimension_worst\" required=\"required\" />");
out.println("                  </div>");
out.println("                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type=\"submit\" class=\"btn btn-primary btn-lg\">Predict</button>");
out.println("                </div>");
out.println("            </fieldset>");
out.println("          </form>");
out.println("");
out.println("	</div>");
out.println("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>");
out.println("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>");
out.println("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>");
out.println("</body>");
out.println("</html>");
%>