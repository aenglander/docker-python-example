# Using Alpine based official Pytjon repository
FROM python:3.7-alpine

# Expose 80 externally
EXPOSE 80

# Set PORT in ENV to override Flask port in app to EXPOSE'd port
ENV PORT 80

# Set HOST in ENV to override Flask port in app to serve extrenally
ENV HOST 0.0.0.0

# Set the working directory and use relative paths from here out
WORKDIR /usr/src/app/

# Copy the project except items in .dockerignore to the wornking directory
# on the image
ADD * ./

# Install pipenv
RUN pip install pipenv

# Install the requirements to a layer on the image
RUN pipenv install --system --deploy --keep-outdated

# Starts our app
CMD [ "python", "/usr/src/app/app.py" ]
