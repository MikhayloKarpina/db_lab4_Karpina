import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
from main import country, player_count, college, age, points_per_game

# Розкоментуйте цю частину коду аби отримати стовпчикову діаграму
""" plt.bar(country, player_count, color='blue')
plt.xlabel('Country')
plt.ylabel('Player Count')
plt.title('Number of Players by Country') """

# Розкоментуйте цю частину коду аби отримати кругову діаграму
""" plt.pie(player_count, labels=college, autopct='%1.1f%%', startangle=90)
plt.axis('equal')  # Забезпечити кругову форму
plt.title('Distribution of Players by College') """

# Розкоментуйте цю частину коду аби отримати графік залежностей
plt.plot(age, points_per_game, marker='o', linestyle='-', color='b')
plt.xlabel('Age')
plt.ylabel('Average Points per Game')
plt.title('Average Points per Game by Age')
plt.grid(True)

plt.show()