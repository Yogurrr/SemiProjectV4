// header 로고 클릭 이벤트
let logo = document.querySelector('#logo');
logo.addEventListener('click', () => {
    location.href = '/';
})

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