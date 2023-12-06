import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('o usuário encontra-se na página de certidões APF no site TCU', () => {
    cy.visit('https://certidoes-apf.apps.tcu.gov.br/');
  });

  When('o usuário digita o CNPJ correto no espaço de pesquisa de consulta', () => {
    cy.get('#numero-cnpj').type('71673990004679');
    cy.get('#btn-emitir').click();
  });

  Then('o usuário deve visualizar o resultado da pesquisa', () => {
    cy.get('div.card-content').should('be.visible');
    cy.get('div.card-content').should('not.be.empty');
  });

  When('o usuário digita o CNPJ incorreto no espaço de pesquisa de consulta', () => {
    cy.get('#numero-cnpj').type('2.345.678/001-90');
    cy.get('#btn-emitir').click();
  });

  Then('o usuário deve visualizar a mensagem de verificador inválido', () => {
    cy.get('div.snackbar').should('be.visible');
    cy.get('div.snackbar').should('not.be.empty');
  });
  When('o usuário não digita no espaço de pesquisa de consulta', () => {
    cy.get('#btn-emitir').click();
  });

  Then('o usuário deve visualizar a mensagem de informar CNPJ', () => {
    cy.get('div.snackbar').should('be.visible');
    cy.get('div.snackbar').should('not.be.empty');
  });