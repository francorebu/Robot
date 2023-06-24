preconditions :


-python . check with command:  python --version
-pip   .  check with command:  pip --version
-robotframework . install with command :   pip install robotframework  . check with command: robot --version
-seleniumLibrary . install with command :  pip install --upgrade robotframework-seleniumlibrary
-webdrivermanager . install with command : pip install webdrivermanager . check with command: webdrivermanager --version
-chromedriver . install with command : webdrivermanager chrome   . copiar  path: 
                                           C:\xxx..x.x..x.x.x..x.x.\bin . close cmd y open other cmd terminal to refhresh setting.
check with command: chromedriver --version
										 
										 
pip install selenium==4.9.1   install 4.9.1  coz latest (4.10) there is an error. ( init() error o sth like that .

To run the tests:
robot tests/ --outputdir results
