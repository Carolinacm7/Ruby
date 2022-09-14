=begin
MODULOS
Un módulo es muy similar a una clase 
(de hecho, Module es Class' padre en la jerarquía de objetos);
la principal diferencia es que, en lugar de usar métodos de instancia,
usamos métodos de clase. Los métodos de clase comienzan con self.
y se llaman directamente en un módulo.
=end
module Speaker
    def self.echo(something)
    "#{something} ... #{something}"
    end
end

Speaker.echo("Hello")   #=> "Hello ... Hello"
=begin
Bucles
Hay varias formas de escribir bucles en Ruby,
pero como tendemos a usar la enumeración en lugar de los bucles en general,
el bucle que se ve con más frecuencia es quizás el while bucle:
=end
counter = 0

while counter < 5
    counter += 1
end
#También puedes usar su hermano .until
counter = 0

until counter == 5
    counter += 1
end
=begin
En este ejercicio trabajará con cuentas de ahorro. 
Cada año, el saldo de una cuenta de ahorro se actualiza
en función de la tasa de interés. La tasa de interés que 
da el banco depende de la cantidad de dinero en las cuentas (su saldo):

* -3,213% por saldo negativo.
* 0.5% para un saldo no negativo menor a 1000dólares.
* 1.621% para saldo positivo mayor o igual a 1000dólares y menor a 5000dólares.
* 2.475% por saldo positivo mayor o igual a 5000dólares.

Tiene tres tareas, cada una de las cuales se ocupará del saldo 
y su tasa de interés.

Calcular la tasa de interés
Implemente el SavingsAccount.interest_rate 
método para calcular la tasa de interés en función del saldo especificado:
=end
module SavingsAccount
    def self.interest_rate(balance)
    if balance < 0
        -3.213
    elsif balance < 1000
        0.5
    elsif balance < 5000
        1.621
    else
        2.475
    end
    end
=begin 
    Calcular la actualización del saldo anual
    Implementar el SavingsAccount.annual_balance_update 
    método para calcular la actualización del saldo anual,
    teniendo en cuenta la tasa de interés:
=end
    def self.annual_balance_update(balance)
#La función abs() en Ruby devuelve el valor absoluto del entero.
   balance * (1 + interest_rate(balance).abs/100)
    end

=begin
Calcula los años antes de alcanzar el saldo deseado

Implemente el SavingsAccount.years_before_desired_balance
método para calcular la cantidad mínima de años necesarios
para alcanzar el saldo deseado:
=end
def self.years_before_desired_balance(current_balance, desired_balance)
    #counter
    year = 0
    #loop
    while current_balance < desired_balance 
    current_balance = annual_balance_update(current_balance)
    year += 1
    end
    year
    end
end
