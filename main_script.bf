HAI 1.2
CAN HAS DISCORD?

I HAS A CLIENT ITZ A NOOB
IM IN YR LOOP
    VISIBLE "Waiting for events..."
    I HAS A EVENT ITZ A NOOB
    GIMMEH EVENT
    I HAS A EVENT_NAME ITZ ""
    I HAS A EVENT_DATA ITZ ""

    EVENT, U GOTZ A MSG?
    YA RLY
        EVENT_NAME R "message"
        EVENT_DATA R MSG OF EVENT
    NO WAI
        EVENT_NAME R "unknown"
    OIC

    EVENT_NAME, U GOTZ "message"
    YA RLY
        I HAS A CONTENT ITZ CONTENT OF EVENT_DATA
        I HAS A CHANNEL ITZ SENDER OF EVENT_DATA

        VISIBLE "Received message: " CONCAT CONTENT

        I HAS A NUM1 ITZ NOOB
        I HAS A NUM2 ITZ NOOB

        CONTENT, U IZ "add"?
        YA RLY
            I HAS A ARGS ITZ SPLIT CONTENT BY " "
            NUM1 R DIFF OF FIRST OF ARGS AN SMALLR OF COUNT OF ARGS
            NUM2 R LAST OF ARGS
            VISIBLE "Calculating sum of " CONCAT NUM1 CONCAT " and " CONCAT NUM2
            I HAS A SUM ITZ SUM OF NUM1 AN NUM2
            VISIBLE "Sum: " CONCAT SUM

            I HAS A RESPONSE ITZ ""
            GTFO
        NO WAI
            VISIBLE "Unknown command: " CONCAT CONTENT
        OIC

        CHANNEL, U HAS "send_message"?
        YA RLY
            MSG R NEW MSG
            SET CONTENT OF MSG TO RESPONSE
            SENDER MSG TO CHANNEL
        NO WAI
            VISIBLE "Cannot send message. Missing permissions?"
        OIC
    NO WAI
        VISIBLE "Unknown event: " CONCAT EVENT_NAME
    OIC
IM OUTTA YR LOOP

KTHXBYE

