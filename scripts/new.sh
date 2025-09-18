echo "Введите ваше имя (пасхалка: введите 1)"
read name

if [ "$name" = "1" ]; then
    echo "🥚 Пасхалка активирована!"
    echo "Текущая директория:"
    pwd
    exit 0
fi

echo "Введите возраст:"
read age

if [ "$age" -lt 18 ]; then
    echo "Извините, общение только с 18+"
    exit 1
fi

while true; do
    echo "Введите город (Москва не принимается):"
    read city
    
    if [[ "${city,,}" =~ "москва" ]]; then
        echo "Мы не работаем с москвичами! Попробуйте ещё раз."
    else
        break
    fi
done

echo "Добро пожаловать, $name ($age лет) из $city!"
