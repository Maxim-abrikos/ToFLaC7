# ToFLaC7
Седьмая лабораторная работа по теории формальных языков и компиляторов  
В скором времени тут появится адекватный текст, а пока что только скриншоты  

Скачал, проверил работоспособность:  
![Снимок экрана (1903)](https://github.com/user-attachments/assets/1284c5fc-4d4f-492a-86d8-053dad63b06e)  


При получении AST Clang выразил негодование из-за своебразного оформления исходных файлов в VS, но при удалении первых строк ошибки исчезли
![Снимок экрана (1904)](https://github.com/user-attachments/assets/5e416bce-6459-4b05-867c-39e60c93c642)  

Генерация промежуточного представления программы:  
![Снимок экрана (1905)](https://github.com/user-attachments/assets/8d08addd-c669-4b28-811d-3204c4596724)  
Остальное в соответствующем файле  

Оптимизация начального уровня:   
![Снимок экрана (1910)](https://github.com/user-attachments/assets/fca84b80-ad0a-4224-9155-699ba036393e)  
Остальное так же в файле

Оптимизация среднего уровня:  
![Снимок экрана (1915)](https://github.com/user-attachments/assets/0d5eab8b-29a4-452b-a84d-4ae8c944a0d0)  

Сравнение файлов (Windows не знает diff, так что используем FC):  
![Снимок экрана (1937)](https://github.com/user-attachments/assets/54ed8743-290a-487a-aae4-a47f60b02abd)  
![Снимок экрана (1938)](https://github.com/user-attachments/assets/0903a265-6581-40c4-835a-f201ea6dd880)  
![Снимок экрана (1939)](https://github.com/user-attachments/assets/76ebe58b-d7e7-4406-b02f-3bc9d5d9ec2f)  
![Снимок экрана (1940)](https://github.com/user-attachments/assets/0e696ffb-4ca4-44ae-bd44-a50cf6fa5e7e)  
![Снимок экрана (1941)](https://github.com/user-attachments/assets/354488c8-cd4e-4bf9-8adf-f204e7041249)  
![Снимок экрана (1942)](https://github.com/user-attachments/assets/cfbdcad3-8f03-4001-8118-aed8d231bde7)  
![Снимок экрана (1943)](https://github.com/user-attachments/assets/78cbe05c-1b8f-4697-a540-f9edb8d08499)  

Генерация оптимизированного LLVM IR:  
![Снимок экрана (1944)](https://github.com/user-attachments/assets/03e2cf3f-9f9c-48d3-9825-9d5ae1dfe4bc)  
Предупреждения - не ошибки, так что идём дальше  

Поток управления программы:  








