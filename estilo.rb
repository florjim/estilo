class PERSON
    LifeStage = {childhood:12, teenager:19, adult:50}
    LegalAge = 18 # CamelCase para clases y módulos.
        attr_reader :name
        attr_writer :name
    def initialize(name, age) # Cuidar los espacios.
        @name = name
        @age = age # Snake_case para símbolos, métodos y variables.
    end
   
    def age
        return @age
    end
    def life_stage
        if @age < LifeStage[:childhood]; :childhood # No usar paréntesis alrededor de la condición
        elsif @age < LifeStage[:teenager]; :teenager
        elsif @age < LifeStage[:adult]; :adult
        else ; :elder # Evitar usar return.
        end
    end
    def legal? # Nombres de métodos que regresen un booleano, se agrega ?.
        return @age >= LegalAge
    end
end
# Esta parte del código son pruebas. 
# Antes y después deben de imprimir puros "true"
fernando = PERSON.new("Fernando",5)
juan = PERSON.new("Juan",45)
laura = PERSON.new("Laura",87)
andrea = PERSON.new("Andrea",13)
puts fernando.legal? == false
puts juan.legal? == true
puts laura.legal? == true
puts andrea.legal? == false
puts fernando.life_stage == :childhood
puts juan.life_stage == :adult
puts laura.life_stage == :elder
puts andrea.life_stage == :teenager
puts laura.age == 87
laura.name = "Ximena"
puts laura.name == "Ximena"