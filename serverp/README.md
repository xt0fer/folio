# Prisma Server
### use prisma as the CRUD backend to postgres (or other SQL)

```
brew tap prisma/prisma
brew install prisma
```
cd into the serverp dir...
```
docker-compose up -d
prisma deploy
```

### and then

Your Prisma GraphQL database endpoint is live:

  HTTP:  http://localhost:4466
  WS:    ws://localhost:4466

You can view & edit your data here:

  Prisma Admin: http://localhost:4466/_admin