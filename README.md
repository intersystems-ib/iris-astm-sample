# 🧪 ASTM Integration Demo with InterSystems IRIS for Health

This simple demo showcases how InterSystems IRIS for Health can be used to simulate ASTM-based communication between a **laboratory instrument** and a **host system**. ASTM is a common protocol used in laboratory environments to exchange queries and results.

This project includes two interoperable productions:
- One acting as a **lab instrument**
- One acting as a **host system**

---

## 🚀 Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Setup

To spin up the environment, run the following commands:

```bash
docker-compose build
docker-compose up -d
```

Once the containers are running, you can access the InterSystems Management Portal at:

- http://localhost:52773/csp/sys/UtilHome.csp  
  (Username: `superuser`, Password: `SYS`)

---

## ⚙️ Interoperability Productions

There are two pre-configured InterSystems IRIS productions:

### 🎛 Instrument.Production  
This production simulates a **lab instrument** sending ASTM query and result messages.

- 📍 Access it here:  
  [Instrument.Production](http://localhost:52773/csp/astm-instrument/EnsPortal.ProductionConfig.zen?PRODUCTION=ASTM.Instrument.Production&$NAMESPACE=ASTM-HOST)

### 🖥 Host.Production  
This production simulates a **host system** that receives messages and provides appropriate ASTM replies.

- 📍 Access it here:  
  [Host.Production](http://localhost:52773/csp/astm-host/EnsPortal.ProductionConfig.zen?PRODUCTION=ASTM.Host.Production&$NAMESPACE=ASTM-HOST)

---

## ✉️ Simulate Messages

You can simulate two types of ASTM message flows: **Query** and **Result**.

### 🔍 Query Simulation
Simulates the instrument querying the host for pending analysis.

1. Copy the file:
   ```bash
   cp test/query.astm test/instrument-in/
   ```
2. The instrument will process it and receive a response.
3. The reply will be available in:
   ```
   test/instrument-out/
   ```

### ✅ Result Simulation
Simulates the instrument sending test results to the host.

1. Copy the file:
   ```bash
   cp test/result.astm test/instrument-in/
   ```

2. Observe how the message is handled and processed by the host system.

---

## 👀 Explore & Learn

Check the logs, messages, and routing rules via the [Production Configuration Portal](http://localhost:52773/csp/sys/UtilHome.csp) and see how InterSystems IRIS for Health manages ASTM messages.

Play around with the files and experiment with different scenarios! 💡
