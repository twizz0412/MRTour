
// 상품소개 사진 더보기 관련

window.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
    // 더보기 버튼 이벤트 리스너
    document.querySelector('.showmore').addEventListener('click', function(e){
        
        let classList = document.querySelector('.OfferFlexibleBox_container').classList; // 더보기 프레임의 클래스 정보 얻기
        let contentHeight = document.querySelector('.OfferFlexibleBox_container > .OfferFlexibleBox_body').offsetHeight; //컨텐츠 높이 얻기

        // 2단계면 전체보기로
        if(classList.contains('showstep2')){
            classList.remove('showstep2');
        }
        // 1단계면 2단계로
        if(classList.contains('showstep1')){
            classList.remove('showstep1');
            if(contentHeight > 6000){
                classList.add('showstep2');
            }else{
                document.querySelector('.showmore').classList.add('hide');
            }
        }
        // 전체보기 시 더보기 버튼 감추기 & 감추기 버튼 표시
        if(!classList.contains('showstep1') && !classList.contains('showstep2')){
            e.target.classList.add('hide');
            document.querySelector('.showless').classList.remove('hide');
        }
        
        // 감추기 버튼 이벤트 리스너
        document.querySelector('.showless').addEventListener('click', function(e){
            e.target.classList.add('hide');
            document.querySelector('.showmore').classList.remove('hide'); // 더보기 버튼 감춤
            document.querySelector('.OfferFlexibleBox_container').classList.add('showstep1'); // 초기 감춤 상태로 복귀
        });
        
        
    });
});