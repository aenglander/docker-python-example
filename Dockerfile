# Using Alpine based official Pytjon repository
FROM python:3.6-alpine

# Expose 80 externally
EXPOSE 80

# Set PORT in ENV to override Flask port in app to EXPOSE'd port
ENV PORT 80

# Set HOST in ENV to override Flask port in app to serve extrenally
ENV HOST 0.0.0.0

# Copy the project except items in .dockerignore to the /usr/src/app directory on the image
ADD * /usr/src/app/

# Install the requirements to a layer on the image
RUN pip install -r /usr/src/app/requirements.txt

# Starts our app
CMD [ "python", "/usr/src/app/app.py" ]
