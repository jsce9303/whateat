const data = [

	    {
	        file : 'macd.png',
	        description : '맥도날드 수원망포DT점',
	    },
	    {
	        file : 'sinj.png',
	        description : '신전떡볶이 수원영통1호점',
	    },
	    {
	        file : 'sala.png',
	        description : '샐러디 수원망포역점',
	    },
	    {
	        file : 'bonj.png',
	        description : '본죽비빔밥 수원영통벽적골점',
	    },
	    {
	        file : 'dabo.png',
	        description : '다복향마라탕 망포점',
	    },
	    {
	        file : 'lott.png',
	        description : '패스트푸드',
	    },
	    {
	        file : 'kimba.png',
	        description : '김밥천국 영통점',
	    },
	    {
	        file : 'nill.png',
	        description : '닐리 망포역점',
	    },
	    {
	        file : 'moms.png',
	        description : '맘스터치 영통1호점',
	    },
	    {
	        file : 'kimbb.png',
	        description : '김밥천국 망포점',
	    },
	    {
	        file : 'dudu.png',
	        description : '두둑한샤브칼국수',
	    },
	    {
	        file : 'issa.png',
	        description : '이삭토스트 수원영통벽적골점',
	    },
	    {
	        file : 'ufob.png',
	        description : 'UFO버거 수원망포점',
	    },
	    {
	        file : 'gobo.png',
	        description : '고봉민김밥 수원벽적골망포역점',
	    },
	    {
	        file : 'mang.png',
	        description : '망포할매순대국',
	    },
	    {
	        file : 'hong.png',
	        description : '홍콩반점0410 수원망포역점',
	    },
	    {
	        file : 'kimg.png',
	        description : '김가네김밥 망포역사거리점',
	    },
	    {
	        file : 'pari.png',
	        description : '파리바게뜨 영통롯데점',
	    },
	    {
	        file : 'sang.png',
	        description : '상화돈까스',
	    },
	    {
	        file : 'jeon.png',
	        description : '전티마이베트남쌀국수 망포점',
	    },
	    {
	        file : 'gggo.png',
	        description : '지지고 수원영통점',
	    },
	    {
	        file : 'dunk.png',
	        description : '던킨도너츠 수원망포점',
	    },
	    {
	        file : 'kuks.png',
	        description : '국수나무 수원벽적골점',
	    },
	    {
	        file : 'abgu.png',
	        description : '압구정한식부페',
	    },
	    {
	        file : 'haya.png',
	        description : '하얀풍차제과점 망포점',
	    },
	    {
	        file : 'ogon.png',
	        description : '오공복이 수원망포점',
	    },
	    {
	        file : 'subw.png',
	        description : '써브웨이 수원망포점',
	    },
	    {
	        file : 'choi.png',
	        description : '최고당돈까스 망포역점',
	    },
	    {
	        file : 'miju.png',
	        description : '미정국수0410 수원영통점',
	    },
	    {
	        file : 'miso.png',
	        description : '미소야 수원벽적골점',
	    },
	    {
	        file : 'hans.png',
	        description : '한솥도시락 수원태장고앞점',
	    },
	    {
	        file : 'kunm.png',
	        description : '큰맘할매순대국 망포점',
	    },
		
]

// 요소 가져오기 
const btn = document.querySelector('#btn');
const mainDiv=document.querySelector('#main-div');
const image = document.createElement('img');
const info = document.createElement('p');
// 어쩔 수 없는 var 사용 
var changePicId;
const changePic = () => {
    let i = 0;
    // 사진 돌아가하는 함수 setInterval 사용
    changePicId = setInterval(() => {
        image.src =`./img/${data[i].file}`;
        info.innerHTML =
        `<div style="text-align:center;">${data[i].description}</div>오늘의 점심은 여기서 먹어볼까요? `
        
        // 무한반복 로직
        if (i > data.length-1 || i === data.length-1) {
            i=0
        } else {
            i+=1;
        }
    }, 20)
}

// 시작 이벤트
const start = () => {
    mainDiv.style.backgroundColor = 'white';
    image.setAttribute('height','400px');
    image.setAttribute('width','400px');
    mainDiv.appendChild(image);
    mainDiv.appendChild(info);

    // 1초에 하나씩 돌아가면서 바뀌게 
    changePic();
}

// 멈추기 이벤트
const stop = () => {
    mainDiv.style.backgroundColor = 'white';
    clearInterval(changePicId);
};