{
    "grid": {
    "top": "3%",
    "left": "15%",
    "right": "10%",
    "bottom": "3%"
    },
    "xAxis": {
    "max": "dataMax",
    "type": "value"
    },
    "yAxis": {
    "type": "category",
    "inverse": true,
    "max": 10,
    "data": [<%-xs.slice(1).map(x => `"${x}"`).join(", ")%>],
    "animationDuration": 300,
    "animationDurationUpdate": 300,
    "axisLabel": {
        "show": true,
        "fontSize": 14
    }
    },
    "series": [
    {
        "name": "",
        "realtimeSort": true,
        "seriesLayoutBy": "column",
        "type": "bar",
        "label": {
        "show": true,
        "precision": 1,
        "position": "right",
        "valueAnimation": true,
        "fontFamily": "monospace"
        },
        "data": [<%-ys.slice(1).map(x => Number(x)).join(", ")%>]
    }
    ],
    "graphic": {
    "elements": [
        {
        "type": "text",
        "right": "5%",
        "bottom": "5%",
        "style": {
            "text": "<%-ys[0]%>",
            "font": "bolder 80px monospace",
            "fill": "rgba(100, 100, 100, 0.5)"
        },
        "z": 100
        }
    ]
    }
}