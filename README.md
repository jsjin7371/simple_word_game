# Simple Word Game

Flutter 기반의 프로그램입니다.
</br>
It is a Flutter based program.

> 꼬들이라는 게임에서 영감을 받았습니다.</br>inspired by kordle : https://kordle.kr/
</br>
5 글자로 이루어진 단어를 유추하는 게임입니다.
</br>
This is a game that guess a word made up of 5 letters.
</br>

</br>

특정 서버와 연동하여 데이터를 저장하는 기능은 구현되지 않았습니다.
</br>
로컬로만 간단히 돌릴 수 있습니다.
</br>
The function to store data in conjunction with a specific server has not been implemented.
</br>
You can simply run it locally only.
</br>

## 시작화면(intro page)

<img src="https://github.com/jsjin7371/simple_word_game/assets/120244130/8d3724ad-0942-4192-9783-028dfd4f1355" width="200">
</br>
시작 버튼을 누르면 다음 페이지로 이동합니다.
</br>
If you press start button, it goes next page.
</br>

## 게임 설명 화면(explain page)
<img src="https://github.com/jsjin7371/simple_word_game/assets/120244130/a90b4a25-f993-4a00-a78b-8e5fc148a393" width="200">
</br>
게임에 대한 간단한 설명입니다.
</br>
Description of the game.
</br>

## 게임 화면(game page)
<img src="https://github.com/jsjin7371/simple_word_game/assets/120244130/4ef77b83-64ce-427d-9873-39b417c3c970" width="200">


</br>

## 게임 종료 화면(game over page)
<img src="https://github.com/jsjin7371/simple_word_game/assets/120244130/fa1c7866-d9a6-4904-8843-ab2f65f7caaa" width="200">
</br>
정답 및 시도횟수와 정답을 맞춘 횟수를 표시합니다.
</br>
Displays the correct answer, number of attempts, and number of correct answers.
</br>

## 모델(models)
### user_data_model
유저 데이터 모델에는 시도횟수와 정답을 맞춘 횟수를 저장하는 변수가 있습니다.
</br>
`initUserData()` 함수로 위의 변수들을 초기화 할 수 있습니다.
</br>
`addCountofTry()` 함수로 시도횟수를 1회 증가시킬 수 있습니다.
</br>
`addCountofAnwser()` 함수로 정답을 맞춘 횟수를 1회 증가시킬 수 있습니다.
</br>
</br>
The user data model contains variables that store the number of attempts and the number of correct answers.
</br>
You can initialize the above variables with the `initUserData()` function.
</br>
You can increase the number of attempts by 1 with the `addCountofTry()` function.
</br>
You can increase the number of correct answers by one with the `addCountofAnwser()` function.
</br>

### word_model
`List _word` 에는 정답들을 알파벳 한 개씩 저장하는 리스트입니다.
</br>
`getRandomWoird()`를 통해 랜덤하게 _word 리스트에 존재하는 단어 하나를 반환합니다.













