FROM node:20-slim
WORKDIR /app
RUN npm install -g supergateway
ENV PORT=8080
ENV RAILWAY_API_TOKEN=""
EXPOSE 8080
CMD ["sh", "-c", "supergateway --stdio 'npx -y @railway/mcp-server' --port $PORT"]
