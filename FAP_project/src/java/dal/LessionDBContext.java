/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Enrollment;
import entity.Lession;
import java.util.ArrayList;
import entity.Lecturer;
import entity.Lession;
import entity.Room;
import entity.Student;
import entity.StudentGroup;
import entity.Subject;
import entity.TimeSlot;
import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dell
 */
public class LessionDBContext extends DBContext<Lession> {

    public ArrayList<Lession> getBy(int lid, Date from, Date to) {
        ArrayList<Lession> lessions = new ArrayList<>();
        try {
            String sql = "SELECT \n"
                    + "les.leid,les.isAttended,les.date,\n"
                    + "g.gid,g.gname,su.subid,su.suname,\n"
                    + "t.tid,t.tname,\n"
                    + "r.rid,r.rname,\n"
                    + "l.lid,l.lname\n"
                    + "FROM Lession les INNER JOIN StudentGroup g ON les.gid = g.gid\n"
                    + "				INNER JOIN Subject su ON su.subid = g.subid\n"
                    + "				INNER JOIN TimeSlot t ON t.tid = les.tid\n"
                    + "				INNER JOIN Room r ON r.rid = les.rid\n"
                    + "				INNER JOIN Lecturer l ON l.lid = les.lid\n"
                    + "WHERE les.lid = ? AND les.[date] >= ? and les.[date]<=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, lid);
            stm.setDate(2, from);
            stm.setDate(3, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Lession les = new Lession();
                StudentGroup g = new StudentGroup();
                Subject s = new Subject();
                TimeSlot slot = new TimeSlot();
                Room r = new Room();
                Lecturer l = new Lecturer();

                les.setId(rs.getInt("leid"));
                les.setAttended(rs.getBoolean("isAttended"));
                les.setDate(rs.getDate("date"));

                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("gname"));
                s.setId(rs.getInt("subid"));
                s.setName(rs.getString("suname"));
                g.setSubject(s);
                les.setGroup(g);

                slot.setId(rs.getInt("tid"));
                slot.setName(rs.getString("tname"));
                les.setSlot(slot);

                r.setId(rs.getInt("rid"));
                r.setName(rs.getString("rname"));
                les.setRoom(r);

                l.setId(rs.getInt("lid"));
                l.setName(rs.getString("lname"));
                les.setLecturer(l);

                lessions.add(les);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lessions;

    }

    public ArrayList<Lession> getBySid(String sid, Date from, Date to) {
        ArrayList<Lession> lessions = new ArrayList<>();
        try {
            String sql = "SELECT \n"
                    + "les.leid,les.isAttended,les.date,\n"
                    + "g.gid,g.gname,su.subid,su.suname,\n"
                    + "t.tid,t.tname,\n"
                    + "r.rid,r.rname,\n"
                    + "s.sid,s.sname\n"
                    + "FROM Lession les INNER JOIN StudentGroup g ON les.gid = g.gid\n"
                    + "				INNER JOIN Subject su ON su.subid = g.subid\n"
                    + "				INNER JOIN TimeSlot t ON t.tid = les.tid\n"
                    + "				INNER JOIN Room r ON r.rid = les.rid\n"
                    + "				INNER JOIN Enrollment e ON e.gid = g.gid\n"
                    + "				INNER JOIN Student s ON s.sid = e.sid\n"
                    + "WHERE s.sid = ? AND les.[date] >= ? and les.[date]<=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, sid);
            stm.setDate(2, from);
            stm.setDate(3, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Lession les = new Lession();
                StudentGroup g = new StudentGroup();
                Subject s = new Subject();
                TimeSlot slot = new TimeSlot();
                Room r = new Room();
                //Lecturer l = new Lecturer();
                Student su = new Student();
                Enrollment e = new Enrollment();

                les.setId(rs.getInt("leid"));
                les.setAttended(rs.getBoolean("isAttended"));
                les.setDate(rs.getDate("date"));

                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("gname"));
                s.setId(rs.getInt("subid"));
                s.setName(rs.getString("suname"));
                g.setSubject(s);
                les.setGroup(g);

                slot.setId(rs.getInt("tid"));
                slot.setName(rs.getString("tname"));
                les.setSlot(slot);

                r.setId(rs.getInt("rid"));
                r.setName(rs.getString("rname"));
                les.setRoom(r);


                
                su.setId(rs.getString("sid"));
                su.setName(rs.getString("sname"));
                e.setStudent(su);
                les.setGroup(g);

                lessions.add(les);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lessions;

    }

}
