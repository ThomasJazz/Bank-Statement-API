# Bank Statement API

## Usage

All responses will have the form
```json
{
    "data": "Mixed type holding the content of the response",
    "message": "Description of what happened"
}
```

### List all statements

**Definition**

`GET /statements`

**Response**

- `200 OK` on success

```json
[
  {
    "sID": "1",
    "sDate": "02/19"
  },
  {
    "sID": "2",
    "sDate": "03/19"
  }
]
```

### Register a new customer

**Definition**

`POST /statements`

**Arguments**

- `"sID":int` a globally unique identifier
- `"sDate":date` the month and year of the statement

If a statement with the same ID already exists, the existing statement will be overwritten

**Response**

- `201 Created` on success

```
{
    "sID": "1",
    "sDate": "02/19"
}
```

### Add a new statement

**Definition**

`POST /statements/<sID>`