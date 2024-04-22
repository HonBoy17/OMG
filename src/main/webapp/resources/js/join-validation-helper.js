// 유효성 검증 완료 변수
let idCmplt = false;
let pwdCmplt = false;
let nameCmplt = false;
let nickCmplt = false;
let phoneCmplt = false;

// 문자들 집합 변수
const chars = /[^\w\s]/; //영어와 숫자, 공백을 제외한 모든 문자
const english = /[a-zA-Z]/; // 모든 영어
const specialChars = /[^\w\s가-힣]/; // 특수문자중 한글 제외
const number = /\D/; // 모든 숫자

// 아이디 유효성 검사
function validateId(obj,minLength,maxLength) {	
	let idCheckBtn = document.getElementById('idcheck');
	let idMsg = document.getElementById('idcheckmsg');

	if (obj.value.length < minLength) {
		idMsg.textContent = minLength + '글자 이상 입력 해 주세요';
		idMsg.style.color = '#FF0000';
		//idCheckBtn.setAttribute('disabled', 'disabled');
		idCmplt = false;
		validateCmpltCheck();
	} else if (obj.value.length > maxLength) {
		idMsg.textContent = maxLength + '글자 이하로 입력 해 주세요';
		idMsg.style.color = '#FF0000';
		//idCheckBtn.setAttribute('disabled', 'disabled');
		idCmplt = false;
		validateCmpltCheck();
	} else if (chars.test(obj.value)) {
		idMsg.textContent = '특수문자와 한글은 제외해서 입력해 주세요'
		idMsg.style.color = '#FF0000';
		//idCheckBtn.setAttribute('disabled', 'disabled');
		idCmplt = false;
		validateCmpltCheck();
	} else if (!english.test(obj.value)) {
		idMsg.textContent = '영어를 포함하여 입력해 주세요';
		idMsg.style.color = '#FF0000';
		//idCheckBtn.setAttribute('disabled', 'true');
		idCmplt = false;
		validateCmpltCheck();
	} else {
		idcheck();
		//idCheckBtn.removeAttribute('disabled');
	}
}

// 비밀번호 유효성 검사
function validatePwd(obj,minLength,maxLength) {
	let pwdMsg = document.getElementById('pwdcheckmsg');
	if (obj.value.length < minLength) {
		pwdMsg.textContent = minLength + '글자 이상 입력 해 주세요';
		pwdMsg.style.color = '#FF0000';
		validateCmpltCheck();
	} else if (obj.value.length >= maxLength) {
		pwdMsg.textContent = maxLength + '글자 이하로 입력 해 주세요';
		pwdMsg.style.color = '#FF0000';
		validateCmpltCheck();
	} else {
		pwdMsg.textContent = '';
		pwdCmplt = true;
		validateCmpltCheck();
	}
}

// 이름 유효성 검사
function validateName(obj,minLength,maxLength) {
	let nameMsg = document.getElementById('namecheckmsg');
	if (obj.value.length < minLength) {
		nameMsg.textContent = minLength + '글자 이상 입력 해 주세요';
		nameMsg.style.color = '#FF0000';
		nameCmplt = false;
		validateCmpltCheck();
	} else if (obj.value.length > maxLength) {
		nameMsg.textContent = maxLength + '글자 이하로 입력 해 주세요';
		nameMsg.style.color = '#FF0000';
		nameCmplt = false;
		validateCmpltCheck();
	} else if (specialChars.test(obj.value) || !(number.test(obj.value))) {
		nameMsg.textContent = '특수문자와 숫자는 제외해서 입력해주세요';
		nameMsg.style.color = '#FF0000';
		nameCmplt = false;
		validateCmpltCheck();
	} else {
		nameMsg.textContent = '';
		nameCmplt = true;
		validateCmpltCheck();
	}
}

// 닉네임 유효성 검사
function validateNickname(obj,minLength,maxLength) {
	let nickCheckBtn = document.getElementById('nickcheck');
	let nickMsg = document.getElementById('nickcheckmsg');
	if (obj.value.length < minLength) {
		nickMsg.textContent = minLength + '글자 이상 입력 해 주세요';
		nickMsg.style.color = '#FF0000';
		//nickCheckBtn.setAttribute('disabled', 'disabled');
		nickCmplt = false;
		validateCmpltCheck();
	} else if (obj.value.length > maxLength) {
		nickMsg.textContent = maxLength + '글자 이하로 입력 해 주세요';
		nickMsg.style.color = '#FF0000';
		//nickCheckBtn.setAttribute('disabled', 'disabled');
		nickCmplt = false;
		validateCmpltCheck();
	} else if (specialChars.test(obj.value) || !(number.test(obj.value))) {
		nickMsg.textContent = '특수문자와 숫자는 제외해서 입력해주세요';
		nickMsg.style.color = '#FF0000';
		//nickCheckBtn.setAttribute('disabled', 'disabled');
		nickCmplt = false;
		validateCmpltCheck();
	} else {
		nickcheck();
		//nickCheckBtn.removeAttribute('disabled');
	}
}

// 전화번호 유효성 검사
function validatePhone(obj,length) {
	let phoneMsg = document.getElementById('phonecheckmsg');
	if (obj.value.length != length) {
		phoneMsg.textContent = length + '자리로 입력해주세요';
		phoneMsg.style.color = '#FF0000';
		phoneCmplt = false;
		validateCmpltCheck();
	} else if (chars.test(obj.value) || number.test(obj.value)) {
		phoneMsg.textContent = '숫자만 입력해주세요';
		phoneMsg.style.color = '#FF0000';
		phoneCmplt = false;
		validateCmpltCheck();
	} else {
		phoneMsg.textContent = '';
		phoneCmplt = true;
		validateCmpltCheck();
	}
}

// 유효성 검사 완료시 submit기능 활성화
function validateCmpltCheck() {
	let formSubmit = document.getElementById('submit');
	if (idCmplt && nameCmplt && pwdCmplt && nickCmplt && phoneCmplt) {
		formSubmit.removeAttribute('disabled');
		formSubmit.classList.remove('btn-default');
		formSubmit.classList.add('btn-submit-helper');
	} else {
		formSubmit.setAttribute('disabled', true);
		formSubmit.classList.remove('btn-submit-helper');
		formSubmit.classList.add('btn-default');
	}
}

function idcheck() { // 아이디 중복 체크 함수
	let idData = {id : $('#id').val()};

	$.ajax({

		url : '/helper/idcheck',
		type : 'post',
		data : idData,
		
		success : function(data) {
			if (data === 'duplicated') { 
				$('#idcheckmsg').text('아이디가 중복되어 사용할 수 없습니다.').css('color','#FF0000');
				$('#id').focus();
				$('#submit').attr('disabled', 'disabled');
			} else {
				$('#idcheckmsg').text('사용 가능한 아이디입니다.').css('color','#11CC44');
				idCmplt = true;
				validateCmpltCheck();
				//$('#idcheck').addClass('clickAvailable');
				// if ($('#idcheck').hasClass('clickAvailable') && $('#nickcheck').hasClass('clickAvailable')) {
				// 	$('#submit').removeAttr('disabled').removeClass('btn-default').addClass('btn-submit');
				// }
			}
		}
	});
}

function nickcheck() { // 닉네임 중복 체크 함수
	let nickData = {nickname : $('#nickname').val()};
	
	$.ajax({
		url : '/helper/nickcheck',
		type : 'post',
		data : nickData,
		
		success : function(data) {
			if (data === 'duplicated') {
				$('#nickcheckmsg').text('닉네임이 중복되어 사용할 수 없습니다.').css('color','#FF0000');
				$('#nickname').focus();
				$('#submit').attr('disabled', 'disabled');
			} else {
				$('#nickcheckmsg').text('사용 가능한 닉네임입니다.').css('color','#11CC44');
				nickCmplt = true;
				validateCmpltCheck();
				// $('#nickcheck').addClass('clickAvailable');
				// if ($('#idcheck').hasClass('clickAvailable') && $('#nickcheck').hasClass('clickAvailable')) {
				// 	$('#submit').removeAttr('disabled').removeClass('btn-default').addClass('btn-submit');
				// }
			}
		}
	});
}