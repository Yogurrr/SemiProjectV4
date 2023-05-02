// header 로고 클릭 이벤트
let logo = document.querySelector('#logo');
logo.addEventListener('click', () => {
    location.href = '/';
})

// ------------------------------------------ agree

// 이용약관 체크박스
let agreeone = document.querySelector('#agreeone');

// 개인정보 이용 체크박스
let agreetwo = document.querySelector('#agreetwo');

// 동의 버튼
let okagree = document.querySelector('#okagree');
okagree?.addEventListener('click', () => {
    if (!agreeone.checked) alert("이용약관 동의에 체크하세요!");
    else if (!agreetwo.checked) alert("개인정보 이용 동의에 동의하세요!");
    else location.href = '/join/checkme';
})

// 미동의 버튼
let noagree = document.querySelector('#noagree');
noagree?.addEventListener('click', () => {
    location.href = '/';
})

// ------------------------------------------ checkme
const chkfrm2 = document.forms.checkfrm2;
const chkbtn2 = document.querySelector('#check2btn');
chkbtn2?.addEventListener('click', () => {
    if (chkfrm2.name2.value === '') alert('이름을 입력하세요!!');
    else if (chkfrm2.jumin1.value === '') alert('주민번호를 입력하세요!');
    else if (chkfrm2.jumin2.value === '') alert('나머지 주민번호를 입력하세요!!');
    else if (!chkfrm2.chkjumin.checked) alert('주민번호 처리에 동의하세요!!');
    else {
        chkfrm2.method = 'post';
        chkfrm2.action = '/join/joinme';
        chkfrm2.submit();
    }
})

// ------------------------------------------ joinme
const joinfrm = document.forms.joinfrm;
const joinbtn = document.querySelector('#joinbtn');

joinbtn?.addEventListener('click', () => {
    if (joinfrm.uid.value === '') alert('아이디를 입력하세요!');
    else if (joinfrm.pwd.value === '') alert('비밀번호를 입력하세요!');
    else if (joinfrm.repwd.value === '') alert('비밀번호 확인을 입력하세요!');
    else if (joinfrm.pwd.value !== joinfrm.repwd.value) alert('비밀번호가 서로 일치하지 않습니다!');
    // else if (joinfrm.zip1.value === '' || zip2.value === '') alert('우편번호를 확인하세요!');
    // else if (joinfrm.addr1.value === '' || addr2.value === '') alert('주소를 확인하세요!');
    // else if (joinfrm.email1.value === '' || email2.value === '') alert('이메일을 확인하세요!');
    else if (joinfrm.tel2.value === '' || joinfrm.tel3.value === '') alert('전화번호를 확인하세요!');
    else if (joinfrm.grecaptcha.value === '') alert('자동가입방지를 확인하세요!');
    else {
        location.href = '/join/joinok';
    }
})

// ------------------------------------------ joinok