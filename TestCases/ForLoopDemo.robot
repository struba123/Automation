*** Settings ***
Library    OperatingSystem


*** Test Cases ***
#Forloop1
   # FOR   ${i}     IN RANGE    1   10
     #   LOG TO CONSOLE    ${i}
   # END

#FORloop2
    #FOR   ${i}  IN  1  2  3  4  5  6  7  8
    #    LOG TO CONSOLE    ${i}
   # END

#Forloop3withlist
   # @{items}    Create List  1   2   3   4   5
    # FOR    ${i}    IN  @{items}
      #  LOG TO CONSOLE    ${i}
    #END

#Forloop4
    #FOR    ${i}    IN   John    David   Smith   Scott
    #    LOG TO CONSOLE    ${i}
    #END

#Foorloop5
    #@{nameslist}    Create List  John    David   Smith   Scott
    #FOR    ${i}    IN   @{nameslist}
    #    LOG TO CONSOLE    ${i}
    #END

Foorloop6withexit
    @{items}    Create List     1   2   3   4   5
    FOR    ${i}    IN   @{items}
        LOG TO CONSOLE    ${i}
           Exit For Loop If    ${i}==3
    END

