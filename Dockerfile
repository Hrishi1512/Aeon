FROM 5hojib/aeon:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --break-system-packages --ignore-installed --no-cache-dir -r requirements.txt
#RUN pip3 uninstall electrogram --break-system-packages -y && pip3 install --break-system-packages git+https://github.com/Hrishi2861/pyrofork-2.2.11-peer-fix.git

COPY . .
CMD ["bash", "start.sh"]