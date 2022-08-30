describe('Product Details', () => {
  it.only('should redirect to a product page when clicked', () => {
    cy.visit('/')
    cy.get(".products article").first().click()
    cy.url().should('include', '/products/')
  })
})