# PHP Analyzer

PHP Analyzer is a lightweight, custom static analysis tool for PHP projects. It is designed to run in GitHub Actions without requiring Composer dependencies or external libraries. This analyzer can help detect common issues such as unused variables, unused functions, and specific comments like `TODO` or `FIXME` in your PHP codebase.

## Features

- **Syntax Checking**: Detects syntax errors in PHP files.
- **Unused Variable Detection**: Identifies variables that are declared but never used.
- **Unused Function Detection**: Flags functions that are defined but never called.
- **Comment Analysis**: Finds `TODO` or `FIXME` comments for better code documentation.
- No need for Composer, making it lightweight and easy to integrate.

## Getting Started

To use the PHP Analyzer, you can add it directly to your GitHub Actions workflow file.

### Prerequisites

- A GitHub repository containing PHP files.
- GitHub Actions enabled in your repository.

### Usage

1. **Create a GitHub Workflow File**

   Create a new workflow file in your repository under `.github/workflows/php-analysis.yml` with the following content:

   ```yaml
   name: PHP Analysis

   on:
     push:
     pull_request:

   jobs:
     analyze:
       runs-on: ubuntu-latest

       steps:
         - name: Checkout code
           uses: actions/checkout@v3

         - name: Run PHP Analyzer
           uses: ClousCloud/PHP-Analyzer@v1.1.1 # Use the PHP Analyzer action from the ClousCloud repository
           with:
             directory: 'src' # Directory containing PHP files to analyze
   
2. **Push the Workflow to Your Repository**

Commit and push the changes to your repository:

git add .github/workflows/php-analysis.yml
git commit -m "Add PHP Analyzer workflow"
git push origin main


3. **Trigger the Workflow**

The workflow will run automatically whenever you push changes to the main branch or create a pull request targeting the main branch. You can view the results in the "Actions" tab in your GitHub repository.



### Configuration

directory: The input parameter directory specifies the folder containing PHP files that you want to analyze. By default, it is set to src, but you can modify it to match your project structure.

PHP Version: The action uses the php:8.1-cli Docker image by default. To change the PHP version, modify the action.yml in the ClousCloud/PHP-Analyzer repository.


### Extending the Analyzer

To add more features or checks to the analyzer, you can contribute to the ClousCloud/PHP-Analyzer repository by opening issues or submitting pull requests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request to suggest changes or new features.

## Contact

For questions or support, feel free to open an issue in the ClousCloud/PHP-Analyzer repository.
