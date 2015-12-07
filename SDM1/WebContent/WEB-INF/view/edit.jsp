<jsp:include page="menu.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="images/1.png">
<title>Update Registration</title>
<link href="./css/new.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="./css/tcal.css" />
<script type="text/javascript" src="js/tcal.js"></script>

<link rel="stylesheet" type="text/css" media="all"
	href="./css/jsDatePick_ltr.min.css" />
<script type="text/javascript" src="js/jsDatePick.min.1.3.js"></script>




<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- <script src="scripts/form.js" type="text/javascript"></script> -->



<script>
	function formReset() {
		document.getElementById("myform").reset();
	}
</script>


<style type="text/css">
.styled-button-10 {
	background: #5CCD00;
	background: -moz-linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #5CCD00),
		color-stop(100%, #4AA400));
	background: -webkit-linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	background: -o-linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	background: -ms-linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	background: linear-gradient(top, #5CCD00 0%, #4AA400 100%);
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#5CCD00',
		endColorstr='#4AA400', GradientType=0);
	padding: 6px 30px;
	color: #fff;
	font-family: 'Helvetica Neue', sans-serif;
	font-size: 16px;
	border-radius: 5px;
	-moz-border-radius: 9px;
	-webkit-border-radius: 5px;
	border: 1px solid blue
}

fieldset {
	border: 2px solid black;
	background:;
	border-radius: 5px;
	padding: 5px;
}

fieldset legend {
	background: Green;
	color: black;
	padding: 4px 8px;
	font-size: 16px;
	border-radius: 2px;
	box-shadow: 0 0 0 2px #bf9543;
	margin-left: 30px;
}
</style>
<script>
	window.onload = function() {

		//Check File API support
		if (window.File && window.FileList && window.FileReader) {
			var filesInput = document.getElementById("files");

			filesInput
					.addEventListener(
							"change",
							function(event) {

								var files = event.target.files; //FileList object
								var output = document.getElementById("result");

								for (var i = 0; i < files.length; i++) {
									var file = files[i];

									//Only pics
									if (!file.type.match('image'))
										continue;

									var picReader = new FileReader();

									picReader
											.addEventListener(
													"load",
													function(event) {

														var picFile = event.target;

														var div = document
																.createElement("div");

														div.innerHTML = "<img class='thumbnail' src='" + picFile.result + "'" +
                            "title='" + picFile.name + "'/>";

														output.insertBefore(
																div, null);

													});

									//Read the image
									picReader.readAsDataURL(file);
								}

							});
		} else {
			console.log("Your browser does not support File API");
		}
	}
</script>






<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#img_prev').attr('src', e.target.result).width(100).height(
						100);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

<script>
	jQuery(function($) {
		var fileDiv = document.getElementById("upload");
		var fileInput = document.getElementById("upload-image");
		console.log(fileInput);
		fileInput.addEventListener("change", function(e) {
			var files = this.files
			showThumbnail(files)
		}, false)

		fileDiv.addEventListener("click", function(e) {
			$(fileInput).show().focus().click().hide();
			e.preventDefault();
		}, false)

		fileDiv.addEventListener("dragenter", function(e) {
			e.stopPropagation();
			e.preventDefault();
		}, false);

		fileDiv.addEventListener("dragover", function(e) {
			e.stopPropagation();
			e.preventDefault();
		}, false);

		fileDiv.addEventListener("drop", function(e) {
			e.stopPropagation();
			e.preventDefault();

			var dt = e.dataTransfer;
			var files = dt.files;

			showThumbnail(files)
		}, false);

		function showThumbnail(files) {
			for (var i = 0; i < files.length; i++) {
				var file = files[i]
				var imageType = /image.*/
				if (!file.type.match(imageType)) {
					console.log("Not an Image");
					continue;
				}

				var image = document.createElement("img");
				// image.classList.add("")
				var thumbnail = document.getElementById("thumbnail");
				image.file = file;
				thumbnail.appendChild(image)

				var reader = new FileReader()
				reader.onload = (function(aImg) {
					return function(e) {
						aImg.src = e.target.result;
					};
				}(image))
				var ret = reader.readAsDataURL(file);
				var canvas = document.createElement("canvas");
				ctx = canvas.getContext("2d");
				image.onload = function() {
					ctx.drawImage(image, 100, 100)
				}
			}
		}
	});
</script>



</head>
<body>
	<br>

	<form name="myform" action="saveRegistration.htm" method="post"
		onsubmit="return validate();">
		<div align="center">
			<div class="field">



				<table bgcolor=#E0FFFF align="center" width="65%" cellspacing="1"
					cellpadding="10">

					<tr>
						<td>

							<fieldset style="color:;">
								<legend align="center">
									<font face="Courier New" size="+2"><b>${received.prefix}${received.studentname}&nbsp;&nbsp;Details</b></font>
								</legend>

								<br>
								<p>
									<br>
								<table align="center" border="0" cellspacing="5" cellpadding="7"
									style>

									<tr>
										<td></td>
										<td><input class="td" type="hidden" name="sno"
											value="${received.sno}" size="20"></td>
									</tr>
									<tr>
										<td><label><font size="3"><b>Course</b></font><font
												color=red>*</font></label></td>
										<td><select class="td1" name="course" id="course">
												<option value="${received.course}">${received.course}</option>
												<option value="BDS">BDS</option>
												<option value="MDS">MDS</option>
										</select><span id="crse" style="color: red"></span></td>
									</tr>



									<tr>
										<td><label><font size="3"><b>Year:</b></font></label></td>
										<td><select class="td1" name="year" id="year">
												<option value="${received.year}">${received.year}</option>
												<option value="I">I</option>
												<option value="II">II</option>
												<option value="III">III</option>
												<option value="IV">IV</option>
										</select></td>
										<td><label><font size="3"><b>Department</b></font><font
												color=red>*</font></label></td>
										<td><select class="td1" name="department" id="department">
												<option value="${received.department}" selected>${received.department}</option>
												<option value="ORAL MEDICINE & RADIOLOLOGY">ORAL
													MEDICINE andRADIOLOLOGY</option>
												<option value="CONSERVATIVE DENTISTRY">CONSERVATIVE
													DENTISTRY</option>
												<option value="ORALPURGERY">ORALPURGERY</option>
												<option value="PERIODONTICS">PERIODONTICS</option>
												<option value="PEDO DONTICS">PEDO DONTICS</option>
												<option value="PROSTHODONTICS">PROSTHODONTICS</option>
												<option value="PHD">PHD</option>
												<option value="ORAL PATHOLOGY">ORAL PATHOLOGY</option>
										</select></td>
									</tr>


									<tr>
										<td><label for="simple-input"><font size="3"><b>Student
														Name:</b></font><font color=red>*</font></label></td>
										<td><select class="td3" name="prefix">
												<option value="${received.prefix}">${received.prefix}</option>
												<option>Mr.</option>
												<option>Ms.</option>
												<option>Mrs.</option>
										</select><input class="td4" type=text name="studentname"
											value="${received.studentname}"><span id="sname"
											style="color: red"></span></td>
										<td><label for="simple-input"><font size="3"><b>Father
														Name:</b></font></label></td>
										<td><select class="td3" name="prefix1">

												<option value="${received.prefix1}">${received.prefix1}</option>
										</select><input class="td4" type=text name="fathername"
											value="${received.fathername}" size="20"></td>
									</tr>



									<tr>
										<td><label for="simple-input"><font size="3"><b>Registration
														No</b></font></font><font color=red>*</font></label></td>
										<td><input value="${received.rgsno}" class="td"
											name="rgsno" size="20"><span id="rgs"
											style="color: red"></span></td>
										<td><label for="simple-input"><font size="3"><b>
														Nationality:</b></font></font></label></td>
										<td><select class="td1" name="nationality">
												<option value="${received.nationality}">${received.nationality}</option>
												<option value="afghan">Afghan</option>
												<option value="albanian">Albanian</option>
												<option value="algerian">Algerian</option>
												<option value="american">American</option>
												<option value="andorran">Andorran</option>
												<option value="angolan">Angolan</option>
												<option value="antiguans">Antiguans</option>
												<option value="argentinean">Argentinean</option>
												<option value="armenian">Armenian</option>
												<option value="australian">Australian</option>
												<option value="austrian">Austrian</option>
												<option value="azerbaijani">Azerbaijani</option>
												<option value="bahamian">Bahamian</option>
												<option value="bahraini">Bahraini</option>
												<option value="bangladeshi">Bangladeshi</option>
												<option value="barbadian">Barbadian</option>
												<option value="barbudans">Barbudans</option>
												<option value="batswana">Batswana</option>
												<option value="belarusian">Belarusian</option>
												<option value="belgian">Belgian</option>
												<option value="belizean">Belizean</option>
												<option value="beninese">Beninese</option>
												<option value="bhutanese">Bhutanese</option>
												<option value="bolivian">Bolivian</option>
												<option value="bosnian">Bosnian</option>
												<option value="brazilian">Brazilian</option>
												<option value="british">British</option>
												<option value="bruneian">Bruneian</option>
												<option value="bulgarian">Bulgarian</option>
												<option value="burkinabe">Burkinabe</option>
												<option value="burmese">Burmese</option>
												<option value="burundian">Burundian</option>
												<option value="cambodian">Cambodian</option>
												<option value="cameroonian">Cameroonian</option>
												<option value="canadian">Canadian</option>
												<option value="cape verdean">Cape Verdean</option>
												<option value="central african">Central African</option>
												<option value="chadian">Chadian</option>
												<option value="chilean">Chilean</option>
												<option value="chinese">Chinese</option>
												<option value="colombian">Colombian</option>
												<option value="comoran">Comoran</option>
												<option value="congolese">Congolese</option>
												<option value="costa rican">Costa Rican</option>
												<option value="croatian">Croatian</option>
												<option value="cuban">Cuban</option>
												<option value="cypriot">Cypriot</option>
												<option value="czech">Czech</option>
												<option value="danish">Danish</option>
												<option value="djibouti">Djibouti</option>
												<option value="dominican">Dominican</option>
												<option value="dutch">Dutch</option>
												<option value="east timorese">East Timorese</option>
												<option value="ecuadorean">Ecuadorean</option>
												<option value="egyptian">Egyptian</option>
												<option value="emirian">Emirian</option>
												<option value="equatorial guinean">Equatorial
													Guinean</option>
												<option value="eritrean">Eritrean</option>
												<option value="estonian">Estonian</option>
												<option value="ethiopian">Ethiopian</option>
												<option value="fijian">Fijian</option>
												<option value="filipino">Filipino</option>
												<option value="finnish">Finnish</option>
												<option value="french">French</option>
												<option value="gabonese">Gabonese</option>
												<option value="gambian">Gambian</option>
												<option value="georgian">Georgian</option>
												<option value="german">German</option>
												<option value="ghanaian">Ghanaian</option>
												<option value="greek">Greek</option>
												<option value="grenadian">Grenadian</option>
												<option value="guatemalan">Guatemalan</option>
												<option value="guinea-bissauan">Guinea-Bissauan</option>
												<option value="guinean">Guinean</option>
												<option value="guyanese">Guyanese</option>
												<option value="haitian">Haitian</option>
												<option value="herzegovinian">Herzegovinian</option>
												<option value="honduran">Honduran</option>
												<option value="hungarian">Hungarian</option>
												<option value="icelander">Icelander</option>
												<option value="indian">Indian</option>
												<option value="indonesian">Indonesian</option>
												<option value="iranian">Iranian</option>
												<option value="iraqi">Iraqi</option>
												<option value="irish">Irish</option>
												<option value="israeli">Israeli</option>
												<option value="italian">Italian</option>
												<option value="ivorian">Ivorian</option>
												<option value="jamaican">Jamaican</option>
												<option value="japanese">Japanese</option>
												<option value="jordanian">Jordanian</option>
												<option value="kazakhstani">Kazakhstani</option>
												<option value="kenyan">Kenyan</option>
												<option value="kittian and nevisian">Kittian and
													Nevisian</option>
												<option value="kuwaiti">Kuwaiti</option>
												<option value="kyrgyz">Kyrgyz</option>
												<option value="laotian">Laotian</option>
												<option value="latvian">Latvian</option>
												<option value="lebanese">Lebanese</option>
												<option value="liberian">Liberian</option>
												<option value="libyan">Libyan</option>
												<option value="liechtensteiner">Liechtensteiner</option>
												<option value="lithuanian">Lithuanian</option>
												<option value="luxembourger">Luxembourger</option>
												<option value="macedonian">Macedonian</option>
												<option value="malagasy">Malagasy</option>
												<option value="malawian">Malawian</option>
												<option value="malaysian">Malaysian</option>
												<option value="maldivan">Maldivan</option>
												<option value="malian">Malian</option>
												<option value="maltese">Maltese</option>
												<option value="marshallese">Marshallese</option>
												<option value="mauritanian">Mauritanian</option>
												<option value="mauritian">Mauritian</option>
												<option value="mexican">Mexican</option>
												<option value="micronesian">Micronesian</option>
												<option value="moldovan">Moldovan</option>
												<option value="monacan">Monacan</option>
												<option value="mongolian">Mongolian</option>
												<option value="moroccan">Moroccan</option>
												<option value="mosotho">Mosotho</option>
												<option value="motswana">Motswana</option>
												<option value="mozambican">Mozambican</option>
												<option value="namibian">Namibian</option>
												<option value="nauruan">Nauruan</option>
												<option value="nepalese">Nepalese</option>
												<option value="new zealander">New Zealander</option>
												<option value="ni-vanuatu">Ni-Vanuatu</option>
												<option value="nicaraguan">Nicaraguan</option>
												<option value="nigerien">Nigerien</option>
												<option value="north korean">North Korean</option>
												<option value="northern irish">Northern Irish</option>
												<option value="norwegian">Norwegian</option>
												<option value="omani">Omani</option>
												<option value="pakistani">Pakistani</option>
												<option value="palauan">Palauan</option>
												<option value="panamanian">Panamanian</option>
												<option value="papua new guinean">Papua New Guinean</option>
												<option value="paraguayan">Paraguayan</option>
												<option value="peruvian">Peruvian</option>
												<option value="polish">Polish</option>
												<option value="portuguese">Portuguese</option>
												<option value="qatari">Qatari</option>
												<option value="romanian">Romanian</option>
												<option value="russian">Russian</option>
												<option value="rwandan">Rwandan</option>
												<option value="saint lucian">Saint Lucian</option>
												<option value="salvadoran">Salvadoran</option>
												<option value="samoan">Samoan</option>
												<option value="san marinese">San Marinese</option>
												<option value="sao tomean">Sao Tomean</option>
												<option value="saudi">Saudi</option>
												<option value="scottish">Scottish</option>
												<option value="senegalese">Senegalese</option>
												<option value="serbian">Serbian</option>
												<option value="seychellois">Seychellois</option>
												<option value="sierra leonean">Sierra Leonean</option>
												<option value="singaporean">Singaporean</option>
												<option value="slovakian">Slovakian</option>
												<option value="slovenian">Slovenian</option>
												<option value="solomon islander">Solomon Islander</option>
												<option value="somali">Somali</option>
												<option value="south african">South African</option>
												<option value="south korean">South Korean</option>
												<option value="spanish">Spanish</option>
												<option value="sri lankan">Sri Lankan</option>
												<option value="sudanese">Sudanese</option>
												<option value="surinamer">Surinamer</option>
												<option value="swazi">Swazi</option>
												<option value="swedish">Swedish</option>
												<option value="swiss">Swiss</option>
												<option value="syrian">Syrian</option>
												<option value="taiwanese">Taiwanese</option>
												<option value="tajik">Tajik</option>
												<option value="tanzanian">Tanzanian</option>
												<option value="thai">Thai</option>
												<option value="togolese">Togolese</option>
												<option value="tongan">Tongan</option>
												<option value="trinidadian or tobagonian">Trinidadian
													or Tobagonian</option>
												<option value="tunisian">Tunisian</option>
												<option value="turkish">Turkish</option>
												<option value="tuvaluan">Tuvaluan</option>
												<option value="ugandan">Ugandan</option>
												<option value="ukrainian">Ukrainian</option>
												<option value="uruguayan">Uruguayan</option>
												<option value="uzbekistani">Uzbekistani</option>
												<option value="venezuelan">Venezuelan</option>
												<option value="vietnamese">Vietnamese</option>
												<option value="welsh">Welsh</option>
												<option value="yemenite">Yemenite</option>
												<option value="zambian">Zambian</option>
												<option value="zimbabwean">Zimbabwean</option>
										</select><span id="nat" style="color: red"></span></td>
									</tr>


									<tr>
										<td><label for="simple-input"><font size="3"><b>Date
														of Admission:</b></font></label></td>
										<td><input value="${received.date}" type="text"
											name="date" class="tcal" size="20"></td>

										<td><label for="simple-input"><font size="3"><b>
														Passport No:</b></font></label></td>
										<td><input value="${received.passportno}" class="td"
											type=text name="passportno" id="passportno" size="20">
										</td>
									</tr>




									<tr>
										<td><label for="simple-input"><font size="3"><b>Passport
														Issue date:</b></font></label></td>
										<td><input class="tcal" name="pid" id="pid"
											value="${received.pid}" size="20"></td>

										<td><label for="simple-input"><font size="3"><b>Valid
														till:</b></font></label></td>
										<td><input class="tcal" name="validtill" id="validtill"
											value="${received.validtill}" size="20"></td>
									</tr>



									<tr>
										<td><label for="simple-input"><font size="3"><b>Visa
														issue date:</b></font></font></label></td>
										<td><input class="tcal" name="vid" id="vid"
											value="${received.vid}" size="20"></td>

										<td><label for="simple-input"><font size="3"><b>
														Date of Birth:</b></font><font color=red>*</font></label></td>
										<td><input class="tcal" name="dob"
											value="${received.dob}" size="20"><font color="red"><span
												id="dob1" style="color: red"></span></td>
									</tr>



									<tr>
										<td><label for="simple-input"><font size="3"><b>Mother
														Name:</b></font></font></label></td>
										<td><select class="td3" name="prefix2">
												<option value="${received.prefix2}">${received.prefix2}</option>
										</select><input type=text class="td4" name="mothername" id="mothername"
											value="${received.mothername}" size="20"></td>

										<td><label for="simple-input"><font size="3"><b>Gender:</b></font><font
												color=red>*</font></label></td>
										<td><select class="td1" name="gender">
												<option value="${received.gender}">${received.gender}</option>
												<option value="Male">Male</option>
												<option value="Female">Female</option>
										</select><span id="gen" style="color: red"></span></td>
									</tr>


									<tr>
										<td><label for="simple-input"><font size="3"><b>Student
														Visa No:</b></font></label></td>
										<td><input class="td" type=text name="studentvisano"
											id="studentvisano" value="${received.studentvisano}"
											size="20"></td>
										<td><label for="simple-input"><font size="3"><b>Category:</b></font></label></td>
										<td><select class="td1" name="category">
												<option value="${received.category}">${received.category}</option>
												<option value="NRI">NRI</option>
												<option value="Management">Management</option>
												<option value="CET">CET</option>
												<option value="Camed.K">Camed.K</option>
										</select><span id="c" style="color: red"></span></td>
									</tr>


									<tr>
										<td><label for="simple-input"><font size="3"><b>Residential
														Permit Validity:</b></font></label></td>
										<td><input value="${received.rpv}" class="tcal"
											name="rpv" id="rpv" size="20"><span id="cmnts"
											style="color: red"></span></td>

										<td><label for="simple-input"><font size="3"><b>Present
														Residential address Is:</b></font></label></td>
										<td><textarea value="${received.comments}" class="td"
												name="comments" cols="25" rows="5" id="comments">${received.comments}  </textarea><br></td>

									</tr>


									<tr>

										<td width="30%"><label for="simple-input"><font
												size="3"><b>Course Period From:</b></font></label></td>
										<td width="50%"><input type="text" name="cpfrom"
											value="${received.cpfrom}" id="cpfrom" class="tcal" />
											</div>
											</div></td>

										<td><font size="3"><b>To:</b></font></td>
										<td><input type="text" name="cpto"
											value="${received.cpto}" id="cpto" class="tcal" />
											</div>
											</div></td>


									</tr>


									<tr>
										<td><label for="simple-input"><font size="3"><b>Intership
														Period From:</b></font></label></td>
										<td><input type="text" name="ipfrom"
											value="${received.ipfrom}" id="ipfrom" class="tcal" /></td>

										<td><font size="3"><b>To:</b></font></td>
										<td><input type="text" name="ipto"
											value="${received.ipto}" id="ipto" class="tcal" /></td>

									</tr>



									<tr>

										<td><label for="simple-input"><font size="3"><b>Whether
														the Institution is Recognized:</b></font></font></label></td>
										<td><select class="td1" name="wir" id="wir">
												<option value="${received.wir}">${received.wir}</option>
												<option value="Yes">YES</option>
												<option value="No">NO</option>
										</select></td>
										<td><label for="simple-input"><font size="3"><b>Whether
														he/she Attending classes Regularly Or not:</b></font></font></label></td>
										<td><select class="td1" name="warn" id="warn">
												<option value="${received.warn}">${received.warn}</option>
												<option value="Yes">YES</option>
												<option value="No">NO</option>
										</select></td>
									</tr>

									<tr>
										<td><label for="simple-input"><font size="3"><b>Attendance
														Percentage:</b></font></font></label></td>
										<td><input class="td2" type="text" name="ap" id="ap"
											size="5" value="${received.ap}"></td>
									</tr>



									<tr>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>

										<td align="right"><input type="submit"
											class="styled-button-10" value="Update"></td>
										<td align="left"><input type="reset"
											class="styled-button-10" value="Reset" onclick="formReset()">
										</td>
									</tr>
								</table>
							</fieldset>
							</div>
							</div>
							</form>
</body>
</html>