![](https://img.shields.io/badge/Microverse-blueviolet)


# Enumerable class

The Microverse 5th project for the Ruby module that consists of reproducing some of the methods from the Enumerable class with the Ruby programming language and testing this methods with the rspec framework.

## Built With
- Ruby programming language
- VS Code
- Rubocop
- Rspec

## Authors
### Author1
- 👤GitHub: [Jose Abel Ramirez](https://github.com/jose-Abel)
- Linkedin: [Jose Abel Ramirez Frontany](https://www.linkedin.com/in/jose-abel-ramirez-frontany-7674a842/)

## Author2
- 👤GitHub: [Tazoh Yanick](https://github.com/t-yanick)
- Linkedin: [Tazoh Yanick](https://linkedin.com/in/tazoh-yanick-5a978764)

## Author2
- For the tdd_rspec branch
- 👤GitHub: [Alvaro Ruiz](https://github.com/alvarorf)
- Linkedin: [Alvaro Ruiz](https://www.linkedin.com/in/alvaro-ruiz-22810915a/)


## Getting Started
You can clone this code anytime and run it with the Ruby interpreter in the Windows console or Unix terminal by typing 'ruby bin/main.rb' or it can run in Unix OS by typing 'bin/main.rb' in the terminal, without the 'ruby' interpreter command, since the main file has the shebang instruction at the top that makes it an executable file.

### Setup
You can either copy the code with git clone or with any other method and run it on your local environment. The commands to clone it and then run the game are:
- git clone https://github.com/jose-Abel/enumerable-methods.git
- cd enumerable-methods
- bin/main.rb (if you are in Linux or Mac)
- ruby bin/main.rb (for Windows)


### Run tests
Run the tests for the linters.yml and rubocop and everything passes. The instructions to setup this tests are at this repository: [Rubocop instructions](https://github.com/microverseinc/linters-config/tree/master/ruby)

For the linters, this tests runs once you make a PR, if you have it in the respective folder. In order to have this tests, after cloning this project:
 - cd enumerable-methods
- From the root of this project create the folders .github/workflows
- Add a copy of [.github/workflows/tests.yml](https://github.com/microverseinc/linters-config/blob/master/ruby/.github/workflows/tests.yml) to the .github/workflows

To download rubocop and run the tests on your local environment, this are the commands to type in the Linux, Mac terminal or Windows cmd:
- gem install rubocop
- cd enumerable-methods
- copy this file [.rubocop.yml](https://github.com/microverseinc/linters-config/blob/master/ruby/.rubocop.yml) in the root directory of the project
- type in the terminal 'rubocop'

The commands to install and run rspecs in the Linux, Mac terminal or Windows cmd are:
- gem install rspec
- cd enumerable-methods
- rspec

### Acknowledgments
Appreciate the Ruby Team, and a special acknowledgment to Microverse for pushing us further to increase our knowledge.


## 📝 License
This project is MIT licensed.


## Show your support
Give a ⭐️ if you like this project!
