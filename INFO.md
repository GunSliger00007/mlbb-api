## Project Structure
mlbb-api/
├── src/
│   ├── config/          # Database, environment, and third-party service setups
│   │   └── db.ts
│   ├── controllers/     # Request handlers and business logic
│   │   ├── heroController.ts
│   │   └── nightlyController.ts
│   ├── middlewares/     # Custom Express middlewares (auth, validation, error handling)
│   │   └── errorHandler.ts
│   ├── models/          # Data schemas or ORM models
│   │   └── heroModel.ts
│   ├── routes/          # Express route definitions pointing to controllers
│   │   ├── herosRoutes.ts
│   │   └── nightlyRoutes.ts
│   ├── services/        # Core business/data-fetching logic (keeps controllers thin)
│   │   └── heroService.ts
│   ├── utils/           # Helper functions and reusable utilities
│   │   └── logger.ts
│   └── index.ts         # Application entry point & server bootstrap
├── .gitignore
├── package.json
└── tsconfig.json