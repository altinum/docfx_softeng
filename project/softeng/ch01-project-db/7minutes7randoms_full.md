# "7 minutes 7 randoms" dating club

Students can ask the lecturer on the details of the task and create a Mermaid diagram that can be converted to SQL script using ChatGPT. 

The "7 Minutes 7 Randoms" dating service organizes dating events. Members of the club can apply for events. Each event hosts 14 participants: 7 boys and 7 girls. Each girl sits at a table, and each boy has a chance to talk to each girl for 7 minutes. At the end of the event, participants can give "hearts" to the ones they like. In case of mutual sympathy, organizers hand out contacts. The system ensures that those who have already met do not attend the same event again.

``` mermaid
erDiagram
    MEMBER {
        int id PK "Primary key"
        string name
        string email
        string gender
    }

    EVENT {
        int id PK "Primary key"
        string date
        string location
        string status
    }

    PARTICIPANT {
        int id PK "Primary key"
        int memberId FK "Foreign key to Member"
        int eventId FK "Foreign key to Event"
    }

    HEART {
        int id PK "Primary key"
        int giverId FK "Foreign key to Member (giver)"
        int receiverId FK "Foreign key to Member (receiver)"
        int eventId FK "Foreign key to Event"
    }

    MEMBER ||--o{ PARTICIPANT : "attends"
    EVENT ||--o{ PARTICIPANT : "includes"
    MEMBER ||--o{ HEART : "gives"
    MEMBER ||--o{ HEART : "receives"
    EVENT ||--o{ HEART : "related to"

```



Lessons to learn:

① The number 7 does NOT appear in the database

② There is no way to set check constraints do the number of participants to an event. It has to be solved using a Stored Procedure or some background logic.

③ Mermaid diagram can be converted to SQL - and vice verse. 









