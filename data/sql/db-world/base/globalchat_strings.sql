SET @ENTRY := 17000;

DELETE FROM `acore_string` WHERE `entry` IN (@ENTRY+0, @ENTRY+1, @ENTRY+2, @ENTRY+3, @ENTRY+4, @ENTRY+5, @ENTRY+6);
DELETE FROM `acore_string_locale` WHERE `entry` IN (@ENTRY+0, @ENTRY+1, @ENTRY+2, @ENTRY+3, @ENTRY+4, @ENTRY+5, @ENTRY+6);
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@ENTRY+0, 'Player |cffff0000%s|r tried to post forbidden phrase: |cffff0000%s'),
(@ENTRY+1, 'Player |cffff0000%s|r tried to post URL: |cffff0000%s'),
(@ENTRY+2, '%s has |cffff0000%s|r the GlobalChat.|r'),
(@ENTRY+3, '%s has muted |cffff0000%s|r for %s in the GlobalChat.|r Reason: %s'),
(@ENTRY+4, '%s has permanently muted |cffff0000%s|r in the GlobalChat.|r Reason: %s'),
(@ENTRY+5, '|cffff0000You have been muted for %s in the GlobalChat.|r Reason: %s'),
(@ENTRY+6, '|cffff0000You have been permanently muted in the GlobalChat.|r Reason: %s');
