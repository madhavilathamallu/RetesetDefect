{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2021-02-22T13:00:59",
        "displayName": "New Decision Table",
        "hitPolicy": "UNIQUE",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule2",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Not Eligible\""
                }],
                "inputEntry": [
                    {
                        "domainName": "bizOne",
                        "text": "(ApplicantAge between 50 and 60)"
                    },
                    {
                        "domainName": "bizOne",
                        "text": "(MedicalHistory = \"Bad\")"
                    },
                    {
                        "domainName": "bizOne",
                        "text": "(ApplicantRiskRating = 5)"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule1",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Eligibile\""
                }],
                "inputEntry": [
                    {
                        "domainName": "bizOne",
                        "text": "(ApplicantAge >18)"
                    },
                    {
                        "domainName": "bizOne",
                        "text": "(MedicalHistory = \"Good\")"
                    },
                    {
                        "domainName": "bizOne",
                        "text": "(ApplicantRiskRating = 0)"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            }
        ],
        "preferredOrientation": "RULE_AS_ROW",
        "output": [{
            "primitive": false,
            "itemDefinitionId": "com.dm.one.bizTwo.Status",
            "outputValues": {
                "domainName": null,
                "text": null
            },
            "groupLabel": "bizTwo",
            "description": null,
            "defaultOutputEntry": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": null
            },
            "allowedAttributes": [],
            "label": "Status",
            "collection": false,
            "parentId": "com.dm.one.bizTwo",
            "explicit": true,
            "groupDescription": null,
            "name": "Status",
            "typeRef": "string"
        }],
        "input": [{
            "primitive": false,
            "itemDefinitionId": "com.dm.one.bizOne",
            "format": null,
            "groupLabel": "bizOne",
            "description": null,
            "allowedAttributes": [
                {
                    "allowedValues": {
                        "domainName": null,
                        "text": null
                    },
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "ApplicantAge",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "com.dm.one.bizOne",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "ApplicantAge",
                    "id": "com.dm.one.bizOne.ApplicantAge",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": {
                        "domainName": null,
                        "text": null
                    },
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "MedicalHistory",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "com.dm.one.bizOne",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "MedicalHistory",
                    "id": "com.dm.one.bizOne.MedicalHistory",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": {
                        "domainName": null,
                        "text": null
                    },
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "ApplicantRiskRating",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "com.dm.one.bizOne",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "ApplicantRiskRating",
                    "id": "com.dm.one.bizOne.ApplicantRiskRating",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }
            ],
            "label": null,
            "collection": false,
            "parentId": "com.dm.one.bizOne",
            "explicit": true,
            "groupDescription": null,
            "inputExpression": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": "bizOne"
            },
            "inputValues": null,
            "typeRef": "bizOne"
        }],
        "operations": {
            "workflowData": [],
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "com.dm.one",
        "comment": null,
        "id": "com.dm.one.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2021-02-22T12:49:45",
        "displayName": "one",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "com.dm.one",
        "tables": ["com.dm.one.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "http://asg.com/policies/dmn/v1/",
        "name": "model",
        "id": "com.dm.one.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2021-02-22T18:19:44",
        "author": "policyadmin",
        "description": "com.dm.one",
        "id": "com.dm.one"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2021-02-22T12:50:35",
            "externalSourceDetails": null,
            "displayName": "bizOne",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "42c11841-f6ce-4d10-b0f4-40026a5b595a",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "ApplicantAge",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "com.dm.one.bizOne",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.dm.one",
                    "name": "ApplicantAge",
                    "id": "com.dm.one.bizOne.ApplicantAge",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "MedicalHistory",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "com.dm.one.bizOne",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.dm.one",
                    "name": "MedicalHistory",
                    "id": "com.dm.one.bizOne.MedicalHistory",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "ApplicantRiskRating",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "com.dm.one.bizOne",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.dm.one",
                    "name": "ApplicantRiskRating",
                    "id": "com.dm.one.bizOne.ApplicantRiskRating",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }
            ],
            "namespace": "com.dm.one",
            "name": "bizOne",
            "modifiedBy": null,
            "id": "com.dm.one.bizOne",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{}],
                "inputType": "Database",
                "datasourceName": {
                    "type": 13,
                    "createdOn": "2021-02-22T18:18:55.064+05:30",
                    "referenceId": "4f3e5d51-d2f0-45da-afde-80db2f270a07",
                    "parentName": "Datasources",
                    "modifiedOn": "2021-02-22T18:18:55.064+05:30",
                    "contentAsString": "",
                    "size": 0,
                    "buildProgress": false,
                    "name": "Db1.ds",
                    "location": "/DefectRetest190/Datasources",
                    "id": "f2372269-9d9b-4352-bb7c-de2d181e9a67",
                    "projectId": "8de3ea56-a221-4600-959c-3280120dafc4",
                    "properties": {"datasource": {
                        "datasourceType": 0,
                        "datasourceProperties": {
                            "connectionMeta": {
                                "instance": "",
                                "port": "5432",
                                "host": "localhost",
                                "driverName": "Thin",
                                "connectionType": false,
                                "sid": ""
                            },
                            "password": "p@ssW0rd",
                            "databaseName": "MadhuDB",
                            "jdbcString": "jdbc:postgresql://localhost:5432/MadhuDB",
                            "vendor": "PostgreSQL",
                            "poolSize": 3,
                            "isEncrypted": true,
                            "isJdbcUrl": false,
                            "datasourceId": "4f3e5d51-d2f0-45da-afde-80db2f270a07",
                            "active": 1,
                            "id": "59e832d1-7446-497a-b375-18c467508888",
                            "username": "postgres"
                        },
                        "name": "Db1",
                        "id": "4f3e5d51-d2f0-45da-afde-80db2f270a07",
                        "applicationId": "8de3ea56-a221-4600-959c-3280120dafc4"
                    }}
                },
                "tableName": {
                    "schema": "public",
                    "name": "uniqueHitPolicy"
                }
            },
            "typeRef": "bizOne"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2021-02-22T12:50:54",
            "externalSourceDetails": null,
            "displayName": "bizTwo",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "b4a2a9cd-1c0b-4256-a862-e6a76fdca009",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "externalSourceDetails": null,
                "displayName": "Status",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "com.dm.one.bizTwo",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "com.dm.one",
                "name": "Status",
                "id": "com.dm.one.bizTwo.Status",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "com.dm.one",
            "name": "bizTwo",
            "modifiedBy": null,
            "id": "com.dm.one.bizTwo",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "Status",
                    "typeRef": "string"
                }],
                "inputType": "Custom"
            },
            "typeRef": "bizTwo"
        }
    ]
}