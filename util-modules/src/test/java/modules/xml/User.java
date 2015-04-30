package modules.xml;

import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.xml.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@XmlRootElement
// 指定子节点的顺序
@XmlType(propOrder = { "name", "interests" })
public  class User {

    private Long id;
    private String name;
    private String password;

    private List<String> interests = new ArrayList<>();

    // 设置转换为xml节点中的属性
    @XmlAttribute
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // 设置不转换为xml
    @XmlTransient
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // 设置对List<String>的映射, xml为<interests><interest>movie</interest></interests>
    @XmlElementWrapper(name = "interests")
    @XmlElement(name = "interest")
    public List<String> getInterests() {
        return interests;
    }

    public void setInterests(List<String> interests) {
        this.interests = interests;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}