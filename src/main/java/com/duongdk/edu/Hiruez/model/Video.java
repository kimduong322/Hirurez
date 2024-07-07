package com.duongdk.edu.Hiruez.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@jakarta.persistence.Table(name = "short_videos")
public class Video {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "text")
    private String title;

    private int tymCount;

    private int playCount;

    private int commentCount;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "duration")
    private int duration;

    public Video(String title, int tymCount, int playCount, int commentCount, User user, int duration) {
        super();
        this.title = title;
        this.tymCount = tymCount;
        this.playCount = playCount;
        this.commentCount = commentCount;
        this.user = user;
        this.duration = duration;
    }
}
