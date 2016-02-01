# 신나는 숫자야구!

## Challenge

jquery 및 ajax를 활용하여 서버와 통신하며 숫자 야구를 해봅시다!

서버가 생성한 숫자 3개를 맞추는 게임입니다

한번의 시도에 3개의 숫자를 서버에 전송하고

**규칙 및 서버로 부터 받는 응답은 다음과 같습니다**

* 사용되는 숫자는 0에서 9까지
* 3개의 숫자는 중복되지 않는다
* 숫자값은 맞지만 위치가 틀렸을 때는 Ball
* 숫자값과 위치가 전부 맞으면 Strike
* 숫자값과 위치가 전부 틀리면 Out
* 물론 무엇이 볼이고 스트라이크인지는 알려주지 않는다.
* 3개의 숫자값과 위치를 모두 정확히 맞춰 3 Strike가 되면 게임 종료

## Given

주어진 코드에는 Baseball 모델이 존재
Baseball 모델에는 integer 변수를 저장하는 column이 있으며 다음과 같은 함수를 사용할 수 있다

**1. set_new_number**

```ruby
    Baseball.set_new_number
```
Baseball 모델에 새로운 3자리 숫자를 셋팅한다 *ex) 234*

**2. get_current_number**

```ruby
    myNumber = Baseball.get_current_number # myNumber 에 현재 게임에 사용되고 있는 3자리 숫자를 불러오는 예시
```
*set_new_number*함수로 Baseball 모델에 현재 설정된 3자리 숫자를 return한다