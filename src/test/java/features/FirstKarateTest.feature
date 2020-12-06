Feature: Welcome to Karate
  
  Scenario: how to print
    Given print "Hello World"
    When print 'Another print to test'
    Then print 'Then print it '
    
  Scenario:  more print
    Given print 'some print'
#    *  it represent Given When Then 
    * print 'my name is','karate'
    * print 2+2

  Scenario:  variables
    * def name = 'Mike'
    * print 'my name is '+name
    * def age = 20
    * print name,'is',age,'years old'

  Scenario:  difficult parameters:json object
    * def student = {'name':'sam','owes_tuition':false}
    * print student
    * print student.name

  Scenario:  json object 2
    * def student =
    """
    {
    "firstName":"Steven",
    "lastName":"Hasan"
    }
    """
    * print student.firstName

  Scenario: Spartan Variable
    * def spartan =
    """
    {
    "id": 10,
    "name": "Lorenza",
    "gender": "Female",
    "phone": 3312820936
}
    """
    * print spartan.gender
    * print spartan.phone

  Scenario: json array objects
    * def students =
    """
    [
      {
        'name':'sam',
        'owes_tuition':false
      },
      {
        'name':'mike',
        'owes_tuition':true
      }
    ]
    """
    * print students
    * print students[0].name
    * print students[1].owes_tuition