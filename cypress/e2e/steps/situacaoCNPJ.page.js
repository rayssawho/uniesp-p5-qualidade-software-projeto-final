import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('o usuário encontra-se na página de certidões APF no site TCU', () => {
    cy.visit('https://certidoes-apf.apps.tcu.gov.br/')
  });

  When('o usuário digita o CNPJ correto no espaço de pesquisa de consulta', () => {
    // Cypress code to enter valid credentials
  });

  Then('o usuário deve visualizar o resultado da pesquisa', () => {
    // Cypress code to assert successful login
  });

  When('o usuário digita o CNPJ incorreto no espaço de pesquisa de consulta', () => {
    // Cypress code to enter invalid credentials
  });

  Then('o usuário deve visualizar a mensagem de verificador inválido', () => {
    // Cypress code to assert error message
  });
  When('o usuário não digita no espaço de pesquisa de consulta', () => {
    // Cypress code to enter invalid credentials
  });

  Then('o usuário deve visualizar a mensagem de informar CNPJ', () => {
    // Cypress code to assert error message
  });