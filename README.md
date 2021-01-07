# Alert Master
* alert 창 만드는 것을 연습할 예정입니다. 
* `UIAlertController`, `UIAlertAction`, `alert.addAction`, `present` 와 같은 문법을 사용해봅니다.
<br/><br/>

## 1. changeEmotions
사용자가  `You can change` 버튼을 누르면 Memoji 표정이 바뀝니다. Memoji의 표정은 `happy`와 `angry` 두 가지 입니다.

### ver 0.0
![](https://miro.medium.com/max/2000/1*pZb_vlkGrjkAlYqMpvWR_Q.png)

사용자에게 `alert` 창으로 표정이 어떻게 바뀌는지 알려줍니다. 표정은 `You can change` 버튼을 누를 때 바뀝니다. (`alert` 창의 `OK` 버튼은 표정 변화와 무관합니다.)
* `UIAlertAction` 을 한 번 사용하여 버튼을 하나만 생성
* `UIAlertController`의 `style: .alert`
* `UIAlertAction`의 `style: .default, handler: .nil` 

### ver 1.0
![](https://miro.medium.com/max/2000/1*qp_xMyMybUv8e1kCmHf_5w.png)

사용자에게 `alert` 창으로 표정을 바꿀 것인지 물어봅니다. 표정은 `alert` 창의 `확인` 버튼을 누를 때 바뀝니다. `취소` 버튼을 누르면 바뀌지 않습니다.
* `UIAlertAction` 을 두 번 사용하여 `action` 과 `cancel` 버튼을 두 개 생성합니다.
* `UIAlertController`의 `style: .alert`
* `UIAlertAction`의 `handler` 를 활용하여 `확인` 버튼을 눌렀을 때 `changeEmotions()` method 를 실행하도록 합니다.

