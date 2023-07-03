from flask import Flask, render_template, url_for, redirect
from bs4 import BeautifulSoup

##### database methods #####
from requests import get
import json
from urllib.request import urlopen
import pymongo

#####
import html

app = Flask(__name__, template_folder="app/templates", static_host="0.0.0.0")

API_DATA = dict(get("https://api.apis.guru/v2/list.json").json())

@app.route("/")
def index():
    return redirect(url_for("overview")) 

@app.route("/overview")
def overview():
    return getAPIs()

@app.route("/overview/<apikey>")
def detailview(apikey):
    return getAPIDetails(apikey)

def getAPIs():
    return render_template("apis_overview.html", apis=list(API_DATA.keys()))

def getAPIDetails(key):
    description = BeautifulSoup(API_DATA[key]['versions'][API_DATA[key]['preferred']]['info']['description'],"html.parser").text
    return render_template("api_detailview.html", api_name=key, api_description=description)