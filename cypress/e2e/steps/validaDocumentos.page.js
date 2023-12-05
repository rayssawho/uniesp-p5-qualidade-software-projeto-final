import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('o usuário encontra-se na página de autenticidade de documentos do site TCU', () => {
    cy.visit('https://autenticidade-documento.apps.tcu.gov.br/home')
  });

  When('o usuário digita um código de documento correto na barra de pesquisa', () => {
    // Cypress code to enter valid credentials
  });

  Then('o usuário deve visualizar o resultado da validação', () => {
    // Cypress code to assert successful login
  });

  When('o usuário digita um código de documento incorreto na barra de pesquisa', () => {
    // Cypress code to enter invalid credentials
  });

  Then('o usuário deve visualizar o resultado de documento não encontrado', () => {
    // Cypress code to assert error message
  });

  When('o usuário não digita no espaço de pesquisa de consulta', () => {
    // Cypress code to enter invalid credentials
  });

  Then('o usuário deve visualizar a mensagem de informação obrigatória', () => {
    // Cypress code to assert error message
  });