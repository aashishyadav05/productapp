# ProductApp – Spring MVC Web Application 🛍️

A simple Spring MVC project demonstrating a basic web application with JSP views, controller mappings, and form handling.

---

## 📂 Project Structure

```
productapp/
│
├── src/main/java/...                 # Java controllers, models, and interceptors
├── src/main/webapp/WEB-INF/views/   # JSP view pages (index, about, form, etc.)
├── src/main/webapp/resources/       # Static assets (CSS, JS, images)
├── pom.xml                          # Maven build file
└── .gitignore                       # IntelliJ/Eclipse/Maven ignore rules
```

---

## 🚀 Features

- **Home & About pages:**  
  - `/home` → Loads `index.jsp`  
  - `/about?user=YourName` → Loads `about.jsp` with the provided `user` name

- **Form Handling:**  
  Demonstrates using `@RequestParam` to capture form data.

- **Global Error Handling:**  
  Uses `@ControllerAdvice` and `@ExceptionHandler` to display `null_page.jsp` with an error message on exceptions.

- **Interceptor Support:**  
  Optional `MyInterceptor` setup to intercept specific request mappings (e.g., `/about`).

---

## ✅ Getting Started

### Prerequisites

- Java 8+  
- Maven  
- Servlet container (Apache Tomcat 8+)  
- Git

### Run Locally

1. **Clone the project:**

   ```bash
   git clone https://github.com/aashishyadav05/productapp.git
   ```

2. **Navigate into the directory:**

   ```bash
   cd productapp
   ```

3. **Build with Maven:**

   ```bash
   mvn clean package
   ```

4. **Deploy the generated `.war` file (in `target/`)**  
   - Copy it to the `webapps/` folder of your Tomcat server.  
   **OR** run directly via Maven plugin:

   ```bash
   mvn tomcat7:run
   ```

5. **Open your browser and visit:**

   ```
   http://localhost:8080/productapp/home
   ```

---

## 🧪 Usage Examples

- **Home page:**

   ```
   GET /productapp/home
   ```

- **About page:**

   ```
   GET /productapp/about?user=Aashish
   ```

- **Cause an exception to test global error page:**

   Add a controller mapping:

   ```java
   @RequestMapping("/test")
   public String testException() {
       throw new RuntimeException("Test error");
   }
   ```

   Visit:

   ```
   GET /productapp/test
   ```

---

## 🧹 Clean Up & Configuration

- `.gitignore` ensures build artifacts, IDE config files, and `.class` files are not committed.
- Modify `spring-servlet.xml` to update resource handling or disable interceptors if needed.

---

## 🔜 Future Tasks

- Convert to **Spring Boot** for easier deployment and configuration.
- Deploy live using platforms like **Render**, **Railway**, or **Vercel** with a simple REST interface.
- Add **CRUD operations** with **Spring JDBC** or **Hibernate**.

---

## 🌟 Thanks for checking out ProductApp!

Feel free to open issues or pull requests to suggest improvements or report bugs.
