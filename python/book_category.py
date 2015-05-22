import MySQLdb as mdb

host = "nianyike.mysql.rds.aliyuncs.com"
username = "jerry"
password = "ran820"
db = "nianyike_main"
port = 3306

INSERT_SQL = "INSERT INTO NYK_BookCategory(name, parentId, addTime, updateTime) VALUES('%s',%s,NOW(),NOW())"
SELECT_SQL = "SELECT id FROM NYK_BookCategory WHERE name='%s'"

def save_node(node_parent, node_list):
    con = mdb.connect(host=host, user=username, passwd=password, db=db, port=port,charset='utf8')
    cur = con.cursor()
    insert_sql = INSERT_SQL % (node_parent, 0)
    cur.execute(insert_sql)
    con.commit()

    select_sql = SELECT_SQL % (node_parent)
    cur.execute(select_sql)
    parentId = cur.fetchall()[0][0]
    for node in node_list:
        insert_sql = INSERT_SQL % (node, parentId)
        print insert_sql
        cur.execute(insert_sql)
    con.commit()
    con.close()

def save_tree():
    f = open('/Users/qiangwang/workspace/nianyike_db/book_category.csv')
    tree = dict()
    node_parent = None
    node_list = list()
    for line in f:
        if line.startswith(' ') == False:
            if node_parent != None:
                save_node(node_parent, node_list)
            node_parent = line.strip()
            del node_list[:]
        else:
            node_list.append(line.strip())
    save_node(node_parent, node_list)
    f.close()




