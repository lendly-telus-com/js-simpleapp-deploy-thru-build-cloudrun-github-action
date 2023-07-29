# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Create a non-root user
RUN useradd -m myuser

# Set the ownership of the working directory to the new user
RUN chown -R myuser:myuser /app

# Switch to the non-root user
USER myuser

# Copy the calculator JavaScript file to the container's working directory
COPY index.js ./

# Expose the port for any potential future interactions (not used in this case)
EXPOSE 3000

# Command to run the calculator.js script using Node.js
CMD ["node", "index.js"]
