const data = [
    {
        file : 'abgu.png',
        description : '한식',
    },
    {
        file : 'miso.png',
        description : '일식',
    },
    {
        file : 'dunk.png',
        description : '제과',
    },
    {
        file : 'miju.png',
        description : '면류',
    },
    {
        file : 'hong.png',
        description : '중식',
    },
    {
        file : 'hans.png',
        description : '도시락',
    },
    {
        file : 'ufob.png',
        description : '패스트푸드',
    },
    {
        file : 'sala.png',
        description : '양식',
    },
    {
        file : 'sinj.png',
        description : '분식',
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
        image.src =`img/${data[i].file}`;
        info.innerHTML =`오늘의 점심은 ${data[i].description}에서 골라볼까요? `
        
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