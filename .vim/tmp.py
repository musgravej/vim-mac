from textwrap import dedent

from cariutils.typing import JsonDict

from cronkite import Loader

"""
sdk ds-jobspec create good_men GoodMen tmp_dashboard.py
sdk ds-widgetspec create good_men 5408c814-abf7-46fa-b782-96ff2c4e2e57 --class-name GoodMen --type markdown
sdk ds-widget create good_men c69c3776-d78f-47b1-b7a1-757d77713b40 bf3c14d2-bb8a-4271-b38d-fb08ba118463
sdk ds-widget update --x 0 --y 0 --width 650 --height 250 f34d13df-a2f9-46b2-9a11-30d67b9a81e0

sdk ds-jobspec create the_world TheWorld tmp_dashboard.py
sdk ds-widgetspec create the_world b111abdf-156e-4193-bf82-b1f9888f5192 --class-name TheWorld --type markdown
sdk ds-widget create the_world 957d03aa-b600-43d1-92e8-a0dddb9a191e bf3c14d2-bb8a-4271-b38d-fb08ba118463
sdk ds-widget update --x 0 --y 270 --width 650 --height 250 9dae7802-7da4-4e07-bdaa-81310ce6257a

sdk ds-jobspec create view_table ViewTable tmp_dashboard.py
sdk ds-jobspec update ed4a8ffd-708b-4fb9-bbdf-7f607a9cb617 --code tmp_dashboard.py
sdk ds-widgetspec create view_table ed4a8ffd-708b-4fb9-bbdf-7f607a9cb617 --class-name ViewTable --type table
sdk ds-widget create view_table 21a621c3-9c91-45da-aaf0-f7227ca3399d bf3c14d2-bb8a-4271-b38d-fb08ba118463
sdk ds-widget update --x 0 --y 540 --width 600 --height 400 71fc83f7-32a4-48ee-9e3c-8ad2015f4338

sdk ds-jobspec create paul_nelson PaulNelson tmp_dashboard.py
sdk ds-widgetspec create paul_nelson d95397fa-cdb9-43f1-a1ad-adfc65cded02 --class-name PaulNelson --type markdown
sdk ds-widget create paul_nelson 417e05e7-2c13-44ea-af1e-988d989b25b8 bf3c14d2-bb8a-4271-b38d-fb08ba118463
sdk ds-widget update --x 0 --y 960 --width 650 --height 250 bd5b6aee-dce4-4f1b-b0cb-d7a087770611
"""

paul_nelson = dedent(
    """He learned almost too late that man is a feeling creature... and because of it, the greatest in the universe. He learned too late for himself that men have to find their own way, to make their own mistakes. There can't be any gift of perfection from outside ourselves. And when men seek such perfection... they find only death... fire... loss... disillusionment... the end of everything that's gone forward. Men have always sought an end to the toil and misery, but it can't be given, it has to be achieved. There is hope, but it has to come from inside, from Man himself.
"""
)

the_world = dedent(
    """And you want me to condone this reign of terror? To swear allegiance to this monstrous king of yours? To kill my own soul and all within reach? Well, I won't, Anderson. I'll fight it 'til the last breath in my body. And I'll fight you, too, because you're part of it - the worst part. Because you belong to a living race, not a dying one. This is your land, your world. Your hands are human but your mind is enemy. You're a traitor, Anderson. The greatest traitor of all time. And you know why? Because you're not betraying part of mankind - you're betraying all of it."""
)

good_men = dedent(
    """We live in a world that has walls. And those walls have to be guarded by men with guns. Who’s gonna do it? You? You, Lieutenant Weinberg? I have a great responsibility than you can possibly fathom. You weep for Santiago, and you curse the Marines. You have that luxury. The luxury of the blind. The luxury of not knowing what I know: That Santiago’s death, while tragic, probably saved lives. And my existence, while grotesque and uncomprehensible to you, saves lives. You can’t handle it. Because deep down, in places you don’t talk about, you want me on that wall. You need me there. We use words like honor, code, loyalty.  We use these words as a backbone to a life spent defending something. You use them as a punchline. I have neither the time nor the inclination to explain myself to a man who rises and sleeps under the blanket of the very freedom I provide, then questions the manner in which I provide it. I’d prefer you just said thank you and went on your way. Otherwise, I’d suggest you pick up a weapon and stand a post."""
)


# sdk ds-jobspec create good_men GoodMen tmp_dashboard.py
# sdk ds-widgetspec create good_men {jobspec id} --class-name GoodMen --type markdown
# sdk ds-widget create survey_title {widgetspec id} {dashboard id}
# sdk ds-widget update --x {x} --y {y} --width 1000 --height 400 {widget id}
class GoodMen(Loader.get_base()):

    require_s3 = False

    def on_report(self, scope=None) -> str:
        return ""

    def on_view(self, file) -> JsonDict:
        return {"body": self.jinja.env().from_string(good_men).render({})}


# sdk ds-jobspec create the_world TheWorld tmp_dashboard.py
# sdk ds-widgetspec create the_world {jobspec id} --class-name TheWorld --type markdown
# sdk ds-widget create the_world {widgetspec id} {dashboard id}
# sdk ds-widget update --x {x} --y {y} --width 1000 --height 400 {widget id}
class TheWorld(Loader.get_base()):

    require_s3 = False

    def on_report(self, scope=None) -> str:
        return ""

    def on_view(self, file) -> JsonDict:
        return {"body": self.jinja.env().from_string(the_world).render({})}


# sdk ds-jobspec create paul_nelson PaulNelson tmp_dashboard.py
# sdk ds-widgetspec create paul_nelson {jobspec id} --class-name PaulNelson --type markdown
# sdk ds-widget create paul_nelson {widgetspec id} {dashboard id}
# sdk ds-widget update --x {x} --y {y} --width 1000 --height 400 {widget id}
class PaulNelson(Loader.get_base()):

    require_s3 = False

    def on_report(self, scope=None) -> str:
        return ""

    def on_view(self, file) -> JsonDict:
        return {"body": self.jinja.env().from_string(paul_nelson).render({})}


# sdk ds-jobspec create view_table ViewTable tmp_dashboard.py
# sdk ds-widgetspec create view_table {jobspec id} --class-name ViewTable --type table
# sdk ds-widget create view_table {widgetspec id} {dashboard id}
# sdk ds-widget update --x {x} --y {y} --width 1000 --height 400 {widget id}
class ViewTable(Loader.get_base()):

    require_s3 = False

    def on_report(self, scope=None) -> str:
        return ""

    @staticmethod
    def demo_data():
        return [
            {
                "individual_id": "b8fd08be-f3c0-11ea-9a6f-724306512bca",
                "verified_status": "Verified",
                "first_name": "Enrique",
                "last_name": "Costa",
                "birth_date": "1954-03-18",
                "duration": 30,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "Moderate",
                "group_names": "Health Coaching: Transitional Care",
            },
            {
                "individual_id": "932d7d00-f472-11ea-acbc-724306512bca",
                "verified_status": "Verified",
                "first_name": "Mackenzie",
                "last_name": "Elizabeth",
                "birth_date": "1967-08-23",
                "duration": 12,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "High",
                "group_names": "Health Coaching: Lifestyle Health: Transitional Care",
            },
            {
                "individual_id": "0c15dd68-e0e9-11ea-a46b-d2498f810e55",
                "verified_status": "Verified",
                "first_name": "Marietta",
                "last_name": "Haley",
                "birth_date": "1948-11-19",
                "duration": 45,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "High",
                "group_names": "Health Coaching: Transitional Care",
            },
            {
                "individual_id": "fc21cd88-0931-11eb-937a-ea70b1481f33",
                "verified_status": "Verified",
                "first_name": "Alex",
                "last_name": "Grady",
                "birth_date": "1971-09-05",
                "duration": 50,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "High",
                "group_names": "Health Coaching: Transitional Care",
            },
            {
                "individual_id": "f5ced66e-f3c0-11ea-9f3a-a60e00e521b0",
                "verified_status": "Verified",
                "first_name": "Catherine",
                "last_name": "Gregory",
                "birth_date": "1965-07-12",
                "duration": 120,
                "communication_within_2_business_days": False,
                "medical_decision_complexity": "Moderate",
                "group_names": "Lifestyle Health: Transitional Care",
            },
            {
                "individual_id": "6b9d7680-f3c0-11ea-b2d9-02473014a2d0",
                "verified_status": "Verified",
                "first_name": "Erica",
                "last_name": "Jones",
                "birth_date": "1964-01-26",
                "duration": 15,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "High",
                "group_names": "Lifestyle Health: Transitional Care",
            },
            {
                "individual_id": "87e277fa-e0bf-11ea-a43b-f2905e442c2b",
                "verified_status": "Verified",
                "first_name": "Travis",
                "last_name": "Hughes",
                "birth_date": "1976-05-06",
                "duration": 0,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "Moderate",
                "group_names": "Lifestyle Health: Transitional Care",
            },
            {
                "individual_id": "5034dbd2-572f-11ea-9895-1a196a52b002",
                "verified_status": "Verified",
                "first_name": "Elizabeth",
                "last_name": "Guinn",
                "birth_date": "1971-02-09",
                "duration": 25,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "High",
                "group_names": "Health Coaching: Lifestyle Health: Transitional Care",
            },
            {
                "individual_id": "da6d1768-77a6-11eb-859d-e2b25d1acad0",
                "verified_status": "Verified",
                "first_name": "Robyn",
                "last_name": "Jones",
                "birth_date": "1952-10-22",
                "duration": 30,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "Moderate",
                "group_names": "Health Coaching: Lifestyle Health: Transitional Care",
            },
            {
                "individual_id": "b0a63b0a-1264-11eb-8972-aec082a282e7",
                "verified_status": "Verified",
                "first_name": "Allen",
                "last_name": "Simmons",
                "birth_date": "1978-12-30",
                "duration": 40,
                "communication_within_2_business_days": True,
                "medical_decision_complexity": "Moderate",
                "group_names": "Health Coaching: Transitional Care",
            },
        ]

    @staticmethod
    def default_table_columns():
        return [
            {
                "value": "first_name",
                "label": "First Name",
                "sortable": True,
                "type": "string",
            },
            {
                "value": "last_name",
                "label": "Last Name",
                "sortable": True,
                "type": "string",
            },
            {
                "value": "group_names",
                "label": "Group Names",
                "sortable": True,
                "type": "string",
            },
            {
                "value": "communication_within_2_business_days",
                "label": "Communication Requirement",
                "sortable": True,
                "type": "string",
            },
        ]

    def on_view(self, file) -> JsonDict:
        display_table_columns = self.default_table_columns()
        columns = [self.table_view.Column(**col) for col in display_table_columns]

        view = self.table_view.View(columns, "individual_id", title=("January : Monthly TCM"))

        display_keys = ("individual_id",) + (tuple(col.get("value") for col in display_table_columns))

        for line in self.demo_data():
            row = {}
            for k in display_keys:
                row[k] = line[k]

            url = "/participants/"
            view.add_row(row, url=url)

        return view.to_json()
