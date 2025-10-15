import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'

Given('I access the EngageSphere app having already accepted the cookies banner', () => {
  cy.setCookie('cookieConsent', 'accepted')
  cy.visit('https://engage-sphere.vercel.app/')
})

When('I filter by {string} item per page', (number) => {
  cy.get('[aria-label="Pagination limit"]').select(number)
})

Then('I see {string} tabçe rows', (number) => {
  cy.get('tbody tr').should('have.length', number)
})
