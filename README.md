# EduStock Exchange Platform
This is the implementation of the System designed for the IS 436 class in Fall 2024.

## Table of Contents
* [Description](#description)
* [Phases of System Design](#phases-of-system-design)
    * [System Request](#phase-1-system-request)
    * [Requirements Definition Document and Use Cases](#phase-2-requirements-definition-document-and-use-cases)
    * [Process Modeling](#phase-3-process-modeling)
    * [Data Modeling and Starting Design](#phase-4-data-modeling-and-starting-design)
    * [User Interface Design, Program design and System Implementation](#phase-5-user-interface-design-program-design-and-system-implementation)
* [Using the Application](#using-the-application)
* [Technologies Used](#technologies-used)
* [Contributors](#contributors)
* [Help](#help)
* [License](#license)


## Description
The EduStock Exchange Platform is a risk-free, educational tool that allows users to simulate stock trading in a real-world-like environment. It is designed for university students and individuals interested in learning about stock market trading and portfolio management. The platform integrates real-time stock market data and offers key functionalities such as user account management, trading simulations, portfolio tracking, and educational resources. It is built with a focus on accessibility, scalability, and security.

The system architecture follows a Thin Client-Server model supplemented with Cloud Support to ensure high availability, scalability, and secure handling of user data.

## Phases of System Design
The designing of this system went through five phases. The phases were as follows:
1. System Request - In this phase, we completed a system request. This included the business need, business requirements, business value, special issues or constraints, feasibility analysis, cost-benefit analysis, and the project methodology.
1. Requirements Definition Document and Use Cases - In this phase, we defined functional and non-functional requirements with supporting documentation. Supporting documentation included interviews, observations, questionnaires, and document analysis. We also completed the use case diagram and detailed each use case.
1. Process Modeling - In this phase, we designed diagrams for the system processes. These included the context, level 0, and level 1 diagrams. We also included text definitions for each level 1 diagram.
1. Data Modeling and Starting Design - In this phase, we built and defined the entity-relationship diagram. We also wrote SQL scripts, displayed database tables, completed an alternative matrix and non-functional requirements and architectures with justification, charted hardware and software specifications, and designed the system architecture diagram.
1. User Interface Design, Program design and System Implementation - In this phase, we implemented the system. We developed wireframes for each webpage and hosted the system using Docker.

## Phase 1: System Request
The organization requires an educational tool that enables users to learn stock trading in a real-world environment without financial risk. Beginners will use this platform to understand market dynamics, foster financial literacy, and potentially attract a new user base interested in economic education.

**Business Requirements:**
* User Account Management
    * Allow users to create and manage accounts.
    * Provide an initial amount of virtual money upon account creation.
    * Enable users to add additional virtual funds manually.
* Real-Time Stock Data Integration
    * Integrate with a stock market API to fetch live stock data.
    * Display current market conditions and stock prices.
* Trading Functionality:
    * Implement features to buy and sell stocks using virtual money.
    * Update user portfolios based on trading activities.
    * Provide transaction histories and portfolio performance analytics.
* Educational Resources:
    * Offer tutorials, tips, and explanations of trading concepts
    * Include market news and analysis tools.
* Security and Compliance:
    * Ensure data privacy and secure transactions. 
    * Comply with relevant regulations regarding financial simulations.

**Business Value:**
* Educational Advancement:
    * Enhances user's understanding of stock trading and market behaviors.
    * Encourages financial literacy and responsible investment practices.
* Market Differentiation:
    * Shows the organization as a leader in innovative financial education tools.
    * Attracts a wider audience interested in finance and technology.
* Potential Revenue Streams:
    * Opens opportunities for monetization through advertisements or premium features.
    * Increases user engagement, leading to potential partnerships or sponsorships.

**Special Issues or Constraints:**
* API Limitations:
    * Dependence on third-party stock market APIs may introduce rate limits or costs.
    * Need to ensure API reliability and data accuracy.
* Legal and Regulatory Compliance:
    * Must avoid misrepresentation and adhere to laws concerning financial simulations.
    * Ensure transparency that the platform is for educational purposes only.
* Scalability and Performance:
    * The platform should handle high traffic and real-time data processing.
    * Plan for scalability to accommodate growing user bases.

**Feasibility Analysis:**
* Technical Feasibility:\
We need to ensure all parts of the system are compatible and run smoothly without error. The web application will be user-friendly and if users have questions, there will be a FAQ section. One risk we face is the difficulty of integrating different technical aspects of the system, such as the real-time stock data API, the SQL database for storing user information, and the frontend interface. These integrations could present challenges, such as data inconsistencies or API limitations. However, with thorough testing, proper documentation, and well-defined data-handling strategies, we can mitigate these risks and ensure a stable and efficient platform.

* Economic Feasibility:\
We will be implementing different technical features that will increase the overall cost of the project. However, these increased costs are justified as they will make the application more appealing to users, especially with enhanced security measures. Since the web application is free to users, we face the risk of not seeing any profit. Nonetheless, offering the web application at no cost can boost user interaction and engagement, which may lead to revenue through premium features and advertisements in the future.

* Organizational Feasibility:\
We have an experienced team that will be able to achieve our goal of building an application to educate users on investing. All team members are responsible for different aspects of the system. We could encounter the risk of not meeting the expectations of the project but we can prevent this by maintaining communication between teams.

**Cost-Benefit Analysis (3-year Plan starting 2024):**

**Costs:**
* Development Costs (2024):
    * Initial costs include platform development, API integration for real-time stock data, and setting up the infrastructure (cloud hosting, databases, and security).
    * Estimated Cost: $50,000.
* Maintenance & Upgrades (2025-2026):
    * Continuous development and upgrades, scaling the infrastructure, and covering API usage costs as the user base grows.
    * Estimate Yearly Cost: $30,000 per year.

**Benefits:**
* User Growth:
    * 2024: Focus on user acquisition with an estimated 10,000 users (free platform).
    * 2025: Monetization begins through ads and premium features, projected at 50,000 users (10% premium).
    * 2026: Platform expansion with 100,000 users (20% converting to premium).

* Revenue Projections:
    * 2025: $35,000 from ads and premium subscriptions.
    * 2026: $90,000 from ads and premium subscriptions.

**Net Benefit:**
* 2024: $50,000 loss due to development costs.
* 2025: $5,000 profit (revenue of $35,000 minus costs of $30,000).
* 2026: $60,000 profit (revenue of $90,000 minus costs of $30,000).

**Break-Even Point:** Expected by mid-2025, when the cumulative revenue surpasses the initial development costs.

**Project Methodology:**\
For this project, the most appropriate and efficient methodology would be the SCRUM method. SCRUM methodology is an agile team collaboration framework that is used most commonly in areas such as software development by breaking tasks into ‘time-boxed’ iterations. The platform involves multiple features such as account management, real-time data integration, trading, and educational resources. Due to the complexity of these, it would be more feasible to work in iterations in SCRUM before synthesizing. The features can be tested and developed in iterations so they can be regularly adjusted to fit user needs. SCRUM also offers progress tracking to help keep teams organized and on schedule with the time-sensitive features native to the EduStock platform.

<br>

## Phase 2: Requirements Definition Document and Use Cases
**Functional Requirements**
* Process-Oriented Requirements
    * User Account Management:
        * It lets users create an account with an email and password
        * Allow users to reset passwords if need be
        * Automatically give users an initial amount of money on account creation
        * Provide users an interface to add virtual money manually
        * Display the user’s portfolio with account balances, assets, and transaction histories
    * Real-Time Stock Data Integration:
        * Fetch live stock data from third-party stock market API
        * Display real-time stock prices and market trends
        * Update stock market data regularly to get accurate and current conditions
    * Trading Functionality:
        * Let users buy and sell stocks using virtual money
        * Allow users to view and manage current stock holdings in their portfolio
        * Update the user’s portfolio and balance after each trade
        * Maintain a record of user’s transactions with stock prices, how many stocks, and timing of trades
    * Educational Resources:
        * Provide access to tutorials and educational content on stock trading, market behavior, and trading tips
        * Offer an interactive guide for beginners to learn the stock market fundamentals
* Information-Oriented Requirements
    * User Information
        * Store user account information such as usernames, passwords, and portfolio data
        * Track trading activities, such as stock bought and sold and virtual money balance
    * Stock Data
        * Store real-time stock data fetched from API
        * Record stock data for each user’s transaction history
    * Educational Content
        * Store educational material, articles, and tutorials on stock trading and financial literacy/information

**Non-Functional Requirements**
* Operational
    * Any Web browser should be compatible with the system.
    * The system should integrate with a stock market API.
    * The system should be user friendly and allow for simple navigation in the trading process.
* Performance
    * The system should be accessible to users 24 hours a day and 365 days a year.
    * The system supports 10,000 users simultaneously without a delay in performance.
    * The response time for user activities should be less than 2 seconds.
* Security
    * The system utilizes two-factor authentication to keep user information protected.
    * The system is only accessible to authorized users and technicians when needed.
    * User data will be encrypted to decrease the likelihood of a security breach.
* Cultural/Political
    * The system is compliant with all data protection laws.
    * Terms and conditions are clearly communicated to users.
    * Users and regulatory bodies will be notified in the event of a security breach.

**Supporting Documentation**

Conclusion from the Interviews:
* The interviews with these stakeholders provides valuable insights into the design and functionality of the EduStock Exchange web application platform. Key themes emerged around the need for real-time data integration, user-friendly design, educational resources for beginners, and gamification to boost user engagement. These inputs were critical in shaping both the functional and non-functional requirements of the system, ensuring it meets the diverse needs of users ranging from high school seniors to financial literacy program students in college.

Conclusion from the observation:
* Overall, the MarketSim app falls short in supporting beginners due to its complex setup, difficult interface, and lack of guidance. To address these issues, our EduStock Exchange Platform should prioritize ease of use, provide comprehensive educational content, and include engaging features that make learning fun and effective. This way, our platform can better serve as a learning tool for students new to the stock market.

Summary of Responses from Questionnaire:
* Stock Market Familiarity: 59% (16 out of 27) of respondents reported having little to no knowledge of the stock market, indicating a strong need for beginner-friendly content and guided learning resources.
* Simulation Experience: Only 26% (7 out of 27) of respondents had used a trading simulation before, showing that most students are unfamiliar with such platforms.
* Preferred Learning Resources: 52% (14 out of 27) preferred interactive tutorials and hands-on exercises, while 30% (8 out of 27) preferred video content.
* Feature Preferences: The most requested features were real-time stock trading simulations, 74% of users voted  (20 out of 27) and step-by-step guides, 67% voted (18 out of 27).
* Challenges Identified: The top challenges included understanding complex financial terms, 63% of users voted (17 out of 27) and lack of practical application opportunities, 56% of users voted (15 out of 27).

Key Insights and Conclusion from Document Analysis: 
* The knowledge gained from the documents and report that were analyzed  show a clear need for an educational platform that bridges the gap in financial literacy, supports equity in learning, and incorporates global best practices. By making financial concepts and ideas more accessible to students and providing engaging, real-world simulations, the EduStock Exchange Platform can address the shortcomings found in the current financial education systems and empower all students to build essential financial skills.



**Use Case Documents:**

Use Case 1:
---

**Use Case Name:** User Log-in **ID:** UC-1 **Priority:** Medium
                

**Actor:** Registered User, User Database

**Description:** This use case describes the process by which a registered user logs into the EduStock Exchange Platform to access their account and start trading.

**Trigger:** The user visits the platform and selects the "Log In" option from the homepage.

**Type:**   
* [x] External
* [ ] Temporal
---    
**Preconditions:**
* The user must already be registered on the platform with valid credentials (username/email and password).
* The platform is operational and available.
--- 
**Normal Course:**
1. The user selects "Log In" on the homepage.
2. The system prompts the user to enter their username/email and password.
3. The user inputs their credentials and clicks the "Submit" button.
4. The system verifies the credentials against the stored user data in the database.
5. If the credentials are correct, the system logs the user in and redirects them to their dashboard.
6. The dashboard displays the user’s portfolio, available virtual funds, and recent market data.
---  
**Postconditions:**
* The user is logged in, and the system grants access to the trading dashboard.
* The system displays an error message, and the user is prompted to retry.

<br>


Use Case 2:
---

**Use Case Name:** Two-Factor Authentication **ID:** UC-2 **Priority:** High
                

**Actor:** Registered User, Authentication Service

**Description:** This use case describes the process where a user will log in to the EduStock platform using valid credentials and will then be prompted to enter a verification code that was sent to them either via SMS or Email.

**Trigger:** The use case will initiate when registered user attempts to log in with valid credentials.

**Type:**   
* [x] External
* [ ] Temporal
---    
**Preconditions:**
* The user must have an active account on the EduStock Exchange Platform.
* The user must have enabled 2FA in their account settings.
* The system must have the user's verified email or phone number to send the authentication code.
--- 
**Normal Course:**
1. User enters login credentials (username and password) and submits the form.
1. System validates credentials and, if correct, prompts the user for 2FA.
1. System generates a one-time code and sends it to the user's email or phone.
1. User receives the code and enters it in the system's 2FA prompt.
1. System verifies the entered code within the allowed time limit.
1. Users are granted access to their account upon successful verification.
---  
**Postconditions:**
* **Success:** The user gains full access to the platform after successfully completing 2FA.
* **Failure:** If the code is incorrect or expires, access is denied, and the user must request a new code or try again. After multiple failed attempts, the system may temporarily lock the user out for security reasons.

<br>

Use Case 3:
---

**Use Case Name:** Depositing User Funds **ID:** UC-3 **Priority:** High
                

**Actor:** Registered User, User’s Bank

**Description:** This use case describes the process by which a user deposits funds (virtual or real) into their account on the EduStock Exchange Platform, allowing them to participate in simulated stock trading with additional capital.

**Trigger:** User initiates a deposit process by selecting deposit funds in their wallet and opting to deposit either real world currency or digital funds for simulation purposes.

**Type:**   
* [x] External
* [ ] Temporal
---    
**Preconditions:**
* The user must have an active account on the EduStock Exchange Platform.
* The user is logged into the platform.
* The user has a valid payment method (for real transactions) or access to virtual funds (for simulation purposes).
--- 
**Normal Course:**
1. User navigates to the account or wallet section of the platform.
1. User selects the option to deposit funds.
1. System prompts the user to enter the amount they wish to deposit (virtual funds for simulation or real currency, depending on system setup).
1. User selects a payment method or confirms virtual funds transfer.
1. System processes the request:
    * If real funds: System interacts with the payment gateway to complete the transaction.
    * If virtual funds: System updates the user’s virtual balance.
1. System confirms the deposit and updates the user's account balance.
1. User receives a confirmation message that the funds have been successfully deposited.
---  
**Postconditions:**
* **Success:** The user’s account balance is updated with the deposited funds (virtual or real).
* **Failure:** If the transaction fails (e.g., due to insufficient balance or technical issues), the system notifies the user of the error, and no funds are added.

<br>

Use Case 4:
---

**Use Case Name:** Simulated Stock Trading **ID:** UC-4 **Priority:** High
                

**Actor:** Registered User

**Description:** This use case describes the process by which a registered user buys or sells stocks on the EduStock Exchange Platform using virtual funds, simulating real-world stock trading.

**Trigger:** The user selects a stock to trade and initiates a buy or sell order on the platform.

**Type:**   
* [x] External
* [ ] Temporal
---    
**Preconditions:**
* The user must have an active account on the platform.
* The user is logged into the platform.
* The user has sufficient virtual funds in their account to place a buy order or stocks in their portfolio to place a sell order.
* The platform has access to real-time stock market data through an integrated API.
--- 
**Normal Course:**
1. The user navigates to the "Trading Dashboard."
1. The system displays available stocks with real-time data, including prices.
1. The user selects a stock they wish to buy or sell.
1. The system prompts the user to enter the number of shares and the type of transaction (buy/sell).
1. The user confirms the transaction.
1. The system checks if the user has sufficient funds (for buy) or the required shares (for sell).
1. If valid, the system processes the transaction:
    * For a buy transaction: The system deducts the virtual funds from the user's account and adds the shares to their portfolio.
    * For a sell transaction: The system deducts the shares from the user's portfolio and credits the virtual funds to their account.
1. The system updates the user's transaction history and portfolio.
1. The user receives a confirmation message that the transaction has been successfully completed.
---  
**Postconditions:**
* **Success:** The user's portfolio and virtual funds are updated according to the completed transaction. A confirmation message is shown, and the user's transaction history is logged.
* **Failure:** If the transaction fails (e.g., insufficient funds, invalid stock selection), the system notifies the user of the issue, and no changes are made to the account or portfolio.

<br>

Use Case 5:
---

**Use Case Name:** User Log-in **ID:** UC-5 **Priority:** Medium
                

**Actor:** Registered User, System, Stock Data API, User Database

**Description:** This use case describes how a registered user views and manages their portfolio, which includes their current stock holdings, available virtual funds, and transaction history on the EduStock Exchange Platform.

**Trigger:** The user selects the "Portfolio" option from the dashboard.

**Type:**   
* [x] External
* [ ] Temporal
---    
**Preconditions:**
* The user must have an active and logged-in account.
* The platform must have stored portfolio data for the user.
* Stock data from the API must be available.
--- 
**Normal Course:**
1. The user navigates to the "Portfolio" section on the dashboard.
1. The system retrieves the user's portfolio details from the user database.
1. The system fetches real-time stock prices from the Stock Data API.
1. The portfolio is displayed with updated stock prices, holdings, and available funds.
1. The user can select the "Transaction History" tab to view a list of past trades, which is retrieved from the user database.
1. The system displays the user's transaction history.
---  
**Postconditions:**
* **Success:** The portfolio and transaction history are displayed, showing up-to-date stock values and accurate account balances.
* **Failure:** If data retrieval fails, an error message is displayed, and no portfolio data is shown.





## Phase 3: Process Modeling

## Phase 4: Data Modeling and Starting Design

## Phase 5: User Interface Design, Program design and System Implementation


## Using the application
To use the EduStock Exchange Platform:
1. Open the application in any web browser.
1. Create an account or log in using your credentials.
1. Access educational resources to learn about stock trading.
1. Start trading stocks with virtual funds and manage your portfolio.

## Technologies Used
The project uses the following technologies:
- **Frontend**: HTML, CSS
- **Backend**: Django Framework, Python
- **Database**: MySQL (Docker)
- **Cloud Hosting**: AWS (Amazon Web Services)
- **Version Control**: Git/GitHub
- **Integration**: Real-time Stock Market API

## Contributors
| Name     | Role          |
| -------- | -------------- |
| Alejandro Diaz Meinecke | Backend Developer |
| Kidus Solomon | Database/Network Developer |
| Wardan Kazzalbach | Project Manager |
| Arham Ahmed | Systems Analyst |
| Izzie Powell | Frontend Developer/Lead Designer |

## Help
For any suggestions for common problems or issues please open an issue on github and we will look into your comments as soon as possible.

## License
This project has been intended for the use on a public facing webpage. It is to be used by university students or individuals looking to utilize some of the stock market teaching tools and resources we offer. Source code is available and is open to the public within the repository.


![1a0d8357-51e2-47c1-a0e1-fde9c975ad7a](https://github.com/user-attachments/assets/26fd2632-1892-46b8-9abd-7b66341d9960)

