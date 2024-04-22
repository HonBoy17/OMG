// 유효성 검증 완료 변수
let pwdCmplt = false;
let nameCmplt = false;
let phoneCmplt = false;

// 문자들 집합 변수
const chars = /[^\w\s]/; //영어와 숫자, 공백을 제외한 모든 문자
const english = /[a-zA-Z]/; // 모든 영어
const specialChars = /[^\w\s가-힣]/; // 특수문자중 한글 제외
const number = /\D/; // 모든 숫자

// 비밀번호 유효성 검사
function validatePwd(obj,minLength,maxLength) {
	let pwdMsg = document.getElementById('pwdcheckmsg');
	if (obj.value.length <= minLength) {
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
	if (obj.value.length <= minLength) {
		nameMsg.textContent = minLength + '글자 이상 입력 해 주세요';
		nameMsg.style.color = '#FF0000';
		nameCmplt = false;
		validateCmpltCheck();
	} else if (obj.value.length >= maxLength) {
		nameMsg.textContent = maxLength + '글자 이하로 입력 해 주세요';
		nameMsg.style.color = '#FF0000';
		nameCmplt = false;
		validateCmpltCheck();
	} else if (specialChars.test(obj.value)) {
		nameMsg.textContent = '특수문자는 제외해서 입력해주세요';
		nameMsg.style.color = '#FF0000';
		nameCmplt = false;
		validateCmpltCheck();
	} else {
		nameMsg.textContent = '';
		nameCmplt = true;
		validateCmpltCheck();
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
	if (nameCmplt && pwdCmplt && phoneCmplt) {
		formSubmit.removeAttribute('disabled');
		formSubmit.classList.remove('btn-default');
		formSubmit.classList.add('btn-submit');
	} else {
		console.log('다시제거');
		formSubmit.setAttribute('disabled',true);
		formSubmit.classList.remove('btn-submit');
		formSubmit.classList.add('btn-default');
	}
}