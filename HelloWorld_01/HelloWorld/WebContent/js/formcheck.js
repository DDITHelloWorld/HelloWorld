/*jslint devel: true */
/*globals $:false, jQuery: false ;*/

function check(){
    
    //--------------------------------------------------이름체크
    //입력한 값 가져오기 - 이름
    nameValue = document.getElementById('name').value;

    //공백체크
    if(nameValue.trim().length < 1) {
        alert("이름입력 하세요");
        return false;
    }

    //정규식
    nameReg = /^[가-힣]{2,7}$/;

    //비교 test() - true/false 리턴
    if(!(nameReg.test(nameValue))){
        alert("이름형식오류");
        return false;
    }

    //길이체크 2~7
    if(nameValue.trim().length < 2 || nameValue.trim().length > 7){
        alert("이름을 2~7자리 사이로 입력해주세요.");
        return false;
    }
    
    /*
    //비교 match() - true/false 리턴
    if(nameValue.trim().match(nameReg)){
        return ture;
    }else {
        alert("한글로만 입력해주세요");
        return false;
    }
    */
    
    //--------------------------------------------------아이디체크
    //값가져오기
    idValue = document.getElementById('username').value;
    
    //공백
    if(idValue.trim().length < 1){
        alert("아이디 입력");
        return false;
    }
    
    //길이체크 4~12
    if(idValue.trim().length < 4 || idValue.trim().length > 12){
        alert("아이디는 4~12자리로 입력해주세요.");
        return false;
    }
    
    //정규식-소문자로시작 
    idReg = /^[a-z][a-zA-Z0-9]{3,11}$/;
    if(!(idReg.test(idValue))){
        alert("아이디 형식오류");
        return false;
    }
    
    //--------------------------------------------------이메일체크
    //값가져오기
    emailValue = document.getElementById('email').value;
    
    //공백
    if(emailValue.trim().length < 1){
        alert("이메일을 입력해주세요");
        return false;
    }
    
    //정규식
    emailReg = /^[a-zA-Z0-9]+@[a-zA-Z0-9-_]+(\.[a-z]+){1,2}$/;
    
    a = emailReg.test(emailValue);
    if(a == false){
        alert("이메일 형식오류");
        return false;
    }
    
    //--------------------------------------------------전화번호체크
    //값가져오기
    phoneValue = document.getElementById('phone').value;
    
    //공백
    if(phoneValue.trim().length < 1){
        alert("전화번호를 입력해주세요");
        return false;
    }
    // 정규식
    telreg = /^\d{3}-\d{4}-\d{4}$/;
    if(!(telreg.test(phoneValue))){
        alert("전화번호 형식오류");
        return false;
    }
    
    //--------------------------------------------------비밀번호체크
    //값가져오기
    passValue = document.getElementById('pass').value;
    
    //공백
    if(passValue.trim().length < 1){
        alert("비밀번호를 입력해주세요");
        return false;
    }
    
    //길이체크 8~15
    if(passValue.trim().length < 8 || passValue.trim().length > 15){
        alert("비밀번호는 8~15자리로 입력해주세요.");
        return false;
    }
    
    //정규식 - 영문대소문자, 숫자, 특수문자를 반드시 한개이상씩 입력한다.
    passreg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[~!@#$%^&*()]).{8,15}$/;
    
    if(!(passreg.test(passValue))){
        alert("비밀번호형식오류");
        return false;
    }
    
    //--------------------------------------------------비밀번호체크
    //값가져오기
    birValue = document.getElementById('birthday').value;
    
    //공백
    if(birValue.trim().length < 1){
        alert("생일 입력");
        return false;
    }
    
    //나이체크
    birth = new Date(birValue);
    today = new Date();
    
    // 시간의 간격 - getTime()
    times = today.getTime() - birth.getTime();
    
    times = parseInt(times / 1000 / 60 / 60 / 24 / 365);
    
    if(times < 14){
        alert("14세 이상 가능합니다.")
        return false;
    }
    
    
    return true;
}