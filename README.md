# Singapore Carpark Availability Predictor


## Dataset Information

The data and schema are included in the `datasets/` directory.

The following datasets were donwloaded from https://data.gov.sg and used to build the predictive models:

- [Carpark Availability](https://data.gov.sg/datasets/d_ca933a644e55d34fe21f28b8052fac63/view)
- [COE Bidding Results / Prices](https://data.gov.sg/datasets/d_69b3380ad7e51aff3a7dcc84eba52b8a/view)
- [Singapore Public Holidays](https://data.gov.sg/collections/691/view)
- [24-hour Weather Forecast](https://data.gov.sg/datasets/d_ce2eb1e307bda31993c533285834ef2b/view)

The Carpark Availability dataset is very large. I selected data from five carparks from 2020 to the end of 2024.

The 24-hour Weather Forecast API provides text descriptions for weather (`"Fair"`, `"Heavy Rain"`, `"Showers"`, and so on). For simplicity, and to better align with the binary features required by the models, these were converted into a binary rain indicator (1 for rain; 0 for no rain).

## Installation

### Requirements

- Python 3.10.13
- PostgreSQL 17.2
- TimescaleDB 2.17.2

TimescaleDB is an extension for PostgreSQL that optimises times series data. See the [TimescaleDB self-hosted installation guide](https://docs.timescale.com/self-hosted/latest/install/) for how to install it. 



### Setup

**1. Create a venv and install the libraries**

See Python's [venv documentation](https://docs.python.org/3/library/venv.html) for further instructions
.
For example (Mac/Linux):
```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```


**2. Create a postgresql database**

Ensure that postgreSQL is installed and running, and that the TimescaleDB extension is added. Then create a database.

```bash
psql -U username -c "CREATE DATABASE database_name;"
```

**3. Load the database schema**

Run the provided database_schema.sql file. This will create all the tables and indexes needed.

```bash
psql -U username -d database_name -f datasets/database_schema.sql
```

**4. Import the datasets**

Connect to your PostgreSQL database:
```bash
psql -h localhost -U username -d database_name
```

Once connected, use the following commands to import data from CSV files into the respective tables:

```sql
\copy carpark_availability from 'datasets/carpark_availability_subset.csv' WITH DELIMITER ',' CSV HEADER;
\copy coe_bidding from 'datasets/coe_bidding.csv' WITH DELIMITER ',' CSV HEADER;
\copy daily_rain_summary from 'datasets/daily_rain_summary.csv' WITH DELIMITER ',' CSV HEADER;
\copy public_holidays from 'datasets/public_holidays.csv' WITH DELIMITER ',' CSV HEADER;
```

## Running the Models

Make sure the venv is actived. Otherwise, you can replace `python` with the path to your venv Python binary.

Long Short-Term Memory (LSTM) model:
```bash
python LSTM_parking.py
```

Random Forest (RF) model:
```bash
python RF_parking.py
```
